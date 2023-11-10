#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdint.h"
#include "uart.h"

#define NOP __asm nop __endasm  // Assembly NOP instruction to introduce delays.
#define R_W (P1_7)
#define RS (P1_6)
#define BF (P0_7)
#define PULSE_HIGH (1)
#define PULSE_LOW (0)
#define BYTE_LENGTH (8)

__xdata uint8_t db = 0;
__xdata uint8_t * ptr = &db;
volatile unsigned int tick = 0;
volatile unsigned int  elapsed_tick = 0;

volatile char min_high;
volatile char min_low;
volatile char sec_high;
volatile char sec_low ;
volatile char mili_sec;

uint8_t custom_char_code = 1;

volatile unsigned int clockrun_flag = 0;
void clock_run();
void create_custom_character(uint8_t char_num);
/**
 * @brief External startup code for SDCC.
 * @return 0 on successful startup.
 */
_sdcc_external_startup()
{
    AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
    return 0;               // Return 0 to indicate successful startup
}

// --code-loc 0x2000 --code-size 0x3F40 --xram-loc 0xFC00 --xram-size  0xFFFF -D DEBUG=1

//Enable  is controlled by (A15 & A14 & A13 & A12 & A11 & A10) & !(RD & WR)
// tested ENBALE signal activity at address range 0x8000 to 0xFBFF, and ENABLING is not toggling for this address range

/**
 * @brief Delays the program execution for a specified number of cycles.
 * @param t Number of cycles to delay.
 */
void delay(uint32_t t)
{
    while(t--){
        NOP;  // Assembly NOP instruction for delaying program execution.
    } /* Decrement till it reaches 0 */
}

void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data){
     RS = rs;
     R_W = r_w;
     *ptr = data;
}

void lcdbusywait(){
    RS = PULSE_LOW;
    R_W = PULSE_HIGH;
    while(*ptr & (0b10000000)){
        ; // Poll busy flag until it becomes 0
    }
}
void lcdgotoaddr(uint8_t addr){
    RS = PULSE_LOW;
    R_W = PULSE_LOW;
    *ptr = addr | (0x80);
    lcdbusywait();
}

void lcdgotoxy(uint8_t row, uint8_t column){
    lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
}
void lcdputch(uint8_t cc){
    RS = PULSE_HIGH;
    R_W = PULSE_LOW;
    *ptr = cc;
    lcdbusywait();
}

void lcdputstr(uint8_t *ss){
    uint8_t lcd_ptr_addr = 0;
    while(*ss != '\0'){
        RS = PULSE_LOW;
        R_W = PULSE_HIGH;
        lcdputch(*ss);
        lcd_ptr_addr = *ptr & (0b01111111);
        switch(lcd_ptr_addr){
            case 0x10:
                lcdgotoaddr(0x40);
                break;
            case 0x50:
                lcdgotoaddr(0x10);
                break;
            case 0x20:
                lcdgotoaddr(0x50);
                break;
            case 0x60:
                lcdgotoaddr(0x00);
                break;
            default:
                break;
        }
        ss++;
    }
}
void lcdinit()
{
    delay(14000); //waiting for 15ms (1.085us * 14000 ~= 15ms)
    lcd_command(0,0,0x30); // system set
    delay(4000); //waiting for 4.1ms (1.085us * 4000 ~= 4.1ms)
    lcd_command(0,0,0x30); // system set
    delay(100); //waiting for 100us (1.085us * 100 ~= 100us)
    lcd_command(0,0,0x30); // system set
    lcdbusywait();
    lcd_command(0,0,0x38); // function set
    lcdbusywait();
    lcd_command(0,0,0x08); // turn off display
    lcdbusywait();
    lcd_command(0,0,0x0C); // turn on display
    lcdbusywait();
    lcd_command(0,0,0x06); // Entry mode set
    lcdbusywait();
    lcd_command(0,0,0x01); // clear screen and send the cursor home
}

void lcdclear(){
    RS = PULSE_LOW;
    R_W = PULSE_LOW;
    *ptr = 0b00000001;
    lcdbusywait();
}

void test_functionality(){
    printf_tiny("test_functionality start\n\r");
    // testing goto address directly and write functionality
    lcdgotoaddr(0x01);
    lcdputch('E');
    delay(100000);
    // testing goto address based on rows and column values and write functionality
    lcdgotoxy(1, 1);
    lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
    delay(100000);

    create_custom_character(custom_char_code);
    lcdgotoaddr(0x0F);
    lcdputch(custom_char_code);
    delay(100000);
    // testing clear display
    lcdclear();
    printf_tiny("test_functionality end\n\r");
}

void set_cgram_address(uint8_t cgram_address){
    RS = PULSE_LOW;
    R_W = PULSE_LOW;
    *ptr = cgram_address;
    lcdbusywait();
}
void create_custom_character(uint8_t char_num){
    uint8_t c[8] =
    {0b00000100,
     0b00001110,
     0b00000100,
     0b00000100,
     0b00000100,
     0b00000100,
     0b00000100,
     0b00001010
     };
    for(int i = 0; i < BYTE_LENGTH; i++){
        uint8_t cgram_address = 0b01000000 | (char_num << 3) | i;
        set_cgram_address(cgram_address);
        lcdputch(c[i]);
    }
}

void timer2_init(){
    T2MOD = 0b00000001;
    RCAP2L = 0xFC;
    RCAP2H = 0x4B; // interrupting for every 50msec

    TL2 = RCAP2L;
    TH2 = RCAP2H;
    TR2 = 1;
}
void timer2_interrupt_Init(){
    timer2_init();
    ET2 = 1;
    EA = 1;
}

void isr_timer2(void) __interrupt (5)
{
    __critical{
       tick++;
    }
    clock_run();
    TF2 = 0;
}

void reset_clock(){
    min_high = '0';
    min_low = '0';
    sec_high = '0';
    sec_low = '0';
    mili_sec = '0';

    lcdgotoaddr(0x59);
    lcdputch(min_high);
    lcdputch(min_low);
    lcdputch(':');
    lcdputch(sec_high);
    lcdputch(sec_low);
    lcdputch('.');
    lcdputch(mili_sec);
}
void clock_run(){
    if(clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)){
            elapsed_tick = tick;
           mili_sec++;
           if(mili_sec > '9'){
               mili_sec = '0';
               lcdgotoaddr(0x5F);
               lcdputch(mili_sec);
               sec_low++;
               lcdgotoaddr(0x5D);
               lcdputch(sec_low);
           }
           if(sec_low > '9'){
               sec_low = '0';
               lcdgotoaddr(0x5D);
               lcdputch(sec_low);
               sec_high++;
               lcdgotoaddr(0x5C);
               lcdputch(sec_high);
           }
           if(sec_high > '5'){
               sec_high = '0';
               lcdgotoaddr(0x5C);
               lcdputch(sec_high);
               min_low++;
               lcdgotoaddr(0x5A);
               lcdputch(min_low);
           }
           if(min_low > '9'){
                min_low = '0';
                 lcdgotoaddr(0x5A);
                 lcdputch(min_low);
                min_high++;
                lcdgotoaddr(0x59);
                lcdputch(min_high);
           }
           if(min_high > '5'){
               min_high = '0';
               lcdgotoaddr(0x59);
               lcdputch(min_high);
           }
           lcdgotoaddr(0x5F);
           lcdputch(mili_sec);
    }
}
void main(void)
{
    char indicator = '<';
    lcdinit();
    test_functionality();
    timer2_interrupt_Init();

    printf_tiny("*************************************************************************\n\r");
    printf_tiny("CLOCK MENU:\n\r");
    printf_tiny("[a]. Clock restart\n\r");
    printf_tiny("[b]. Clock stop\n\r");
    printf_tiny("[c]. Clock reset\n\r");
    printf_tiny("*************************************************************************\n\r");
    reset_clock();
    lcdgotoxy(1,1);
    lcdputstr("Clock status:");
    lcdgotoxy(2,1);
    lcdputstr("Running");
    lcdgotoxy(3,1);
    lcdputstr("Stopped");
    lcdgotoxy(4,1);
    lcdputstr("Reset");
    while(1){
        int8_t user_input = echo(); // Read user input from UART
        if (((user_input >= '0') && (user_input <= '9')) || ((user_input >= 'A') && (user_input <= 'Z')))
        {
            // Display a message if user enters uppercase commands
            printf_tiny("Please enter commands in small cases\n\r");
        }
        else
        {
            printf_tiny("\n\r"); // Print newline for better output formatting
        }
        switch(user_input)
        {
            case 'a' :
                 printf_tiny("Restarting clock\n\r");
                 clockrun_flag = 1;
                 lcdgotoxy(2,8);
                lcdputch(indicator);
                lcdgotoxy(3,8);
                lcdputch(' ');
                lcdgotoxy(4,6);
                lcdputch(' ');
                 break;
                 break;
            case 'b' :
                printf_tiny("Stopping clock\n\r");
                clockrun_flag = 0;
                lcdgotoxy(2,8);
                lcdputch(' ');
                lcdgotoxy(3,8);
                lcdputch(indicator);
                lcdgotoxy(4,6);
                lcdputch(' ');
                 break;
            case 'c' :
                printf_tiny("Resetting clock\n\r");
                reset_clock();
                lcdgotoxy(2,8);
                lcdputch(' ');
                lcdgotoxy(3,8);
                lcdputch(' ');
                lcdgotoxy(4,6);
                lcdputch(indicator);
                if(clockrun_flag){
                    lcdgotoxy(2,8);
                    lcdputch(indicator);
                }else{
                    lcdgotoxy(3,8);
                    lcdputch(indicator);
                }
                break;
            default:
                break;
        }
    }
}
