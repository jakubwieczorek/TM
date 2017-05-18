#include <msp430.h>

void initTimerA();

void initMsp();

void sleep();

void count();

volatile char time = 8;// char because char has 8 bits, int has 16 bits

void main(void)
{
	initMsp();
	initTimerA();

	P4OUT = time;
	P3OUT = 0xFF;

	while(1)
	{
		sleep();
	}
}

void initMsp()
{
	WDTCTL = WDTPW | WDTHOLD;		// Stop watchdog timer
	P4DIR |= 0xFF;					// Set P4.0 to output direction 8 bits data in dynamic display
	P3DIR |= 0xFF;					// Set P3.0 to output direction 8 bits control in dynamic display+
}

void initTimerA()					// http://referencedesigner.com/blog/understanding-timers-in-ms430-2/2062/
{
	CCTL0 = CCIE;
	CCR0 = 32768; 					// to 1 sec, ACLK - 32768-Hz
	TACTL |= TASSEL_1 + ID_0 + MC_1;// TASSEL_1 - ACLK, MC_1 - up mode count to CCR0, ID_0 is flag that ACLK counts with 32768Hz frequency, ID_1 1/2 previous frequency etc.
}

void sleep()
{
	__enable_interrupt();

	__bis_SR_register(LPM0 + GIE); 	// LPM0 with interrupts enabled
}


// Timer A0 interrupt service routine
#pragma vector = TIMERA0_VECTOR
__interrupt void Timer_A(void)
{
	P4OUT = ++time;
}

