#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdint.h"
#include "uart.h"
#include "debug.h"

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
    printf_tiny("lcd init start\n\r");
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
    printf_tiny("lcd init end\n\r");
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
    RCAP2L = 0x00;
    RCAP2H = 0x00;

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
    TF2 = 0;
}

void timer0_init(){
    TMOD &= 0xF0;  // Clear the lower 4 bits of TMOD
    TMOD |= 0x01;  // Set timer0 in 16-bit mode

    // Set the initial value for the timer (1 ms period)
    TL0 = 0xFC;
    TH0 = 0x4B;

    TR0 = 1;  // Start the timer
}
void timer0_interrupt_Init(){
    timer0_init();
    ET0 = 1;
    EA = 1;
}

void isr_timer0(void) __interrupt (1)
{
    __critical{
       tick++;
    }
    TL0 = 0xFC;
    TH0 = 0x4B;
    TF0 = 0;
}

void main(void)
{
    unsigned int  previous_time_noted = tick;
    uint8_t custom_char_code = 1;
    uint8_t min_high = '0';
    uint8_t min_low = '0';
    uint8_t sec_high = '0';
    uint8_t sec_low = '0';
    uint8_t mili_sec = '0';
    lcdinit();
    test_functionality();
    create_custom_character(custom_char_code);
    lcdgotoaddr(0x0F);
    lcdputch(custom_char_code);
    timer2_interrupt_Init();
    //timer0_interrupt_Init();

    lcdgotoaddr(0x59);
    lcdputch(min_high);
    lcdputch(min_low);
    lcdputch(':');
    lcdputch(sec_high);
    lcdputch(sec_low);
    lcdputch('.');
    lcdputch(mili_sec);
    while(1){
       if(((tick % 2) == 0) && (tick > previous_time_noted)){
            printf("Tick->>>>>>>>>%d\n\r",tick);
            previous_time_noted = tick;
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
           printf("%c%c:%c%c.%c\n\r",min_high,min_low,sec_high,sec_low,mili_sec);
           lcdgotoaddr(0x5F);
           lcdputch(mili_sec);
       }
    }
}
