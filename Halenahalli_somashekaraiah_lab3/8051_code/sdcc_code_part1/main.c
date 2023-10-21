#include <mcs51/8051.h>

/**
* Program to just toggle the pin P1.1
*/
void delay(unsigned int t)
{
  while(t--); /* Decrement till it reaches 0 */
}

void main()
{
  while(1)
  {
    /* Toggle pin1.1 */
    P1_1 = !P1_1;
    /* wait for 30 msec */
    delay(30000);
  }
}
