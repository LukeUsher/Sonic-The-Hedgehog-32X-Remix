#include <32x.h>

#include "PWMDriver.h"
 
void slave()
{	
	// Copy 32X PWM Driver to Cache
	fast_memcpy((void*)0xC0000000, &PWMDriver, 250);
	
	volatile uint32_t *PWMDriver32 = (uint32_t*)0xC0000000;
	   
	// Set PWMPointers to correct value from ROM
	uint32_t* ptrTable = ((uint32_t*)0x02200000);
	
	for(int i = 0; i < 250; i++)
	{
		if(PWMDriver32[i] == 0xDEADBEEF)
		{
			// ptrTable[0] = Pointer to PWM Table
			PWMDriver32[i] = ptrTable[0];
		}
	}

	// Execute PWMInit function within Cache 
	void (*PWMInit)(void) = (void*)0xC0000000;
	PWMInit();                  
 
	SetSH2SR(2);
		
	while(1)
	{
	}
}
 