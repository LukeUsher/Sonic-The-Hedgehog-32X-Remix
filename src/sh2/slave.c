#include <malloc.h>
#include <sys/types.h>
#include <string.h> 
 
#include "32x.h"
#include "vdp.h"

/*	Slave SH-2 PWM Driver

	Based on the Knuckles Chaotix PWM driver
	Ported to C by SoullessSentinel

	Uses/Trashes the following 32X Communication registers:

	MARS_SYS_COMMC - PWM 1&2
	MARS_SYS_COMME - PWM 3&4
*/

void slave(void)  
{   
	while(1)
	{
		
	}
} 

