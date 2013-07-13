#include <malloc.h>
#include <sys/types.h>
#include <string.h> 
#include <math.h>
  
/* Sonic The Hedgehog 32X Remix Renderer
	Programmed by SoullessSentinel
	
	Uses/Trashes the following 32X Communication registers:

	MARS_SYS_COMM0 - Main SH-2 Command and parameter
	MARS_SYS_COMM2 - Nothing
	MARS_SYS_COMM4 - Nothing
	MARS_SYS_COMM6 - Sonic's Angle (Temporary)
	
	Possible Commands are as follows:
	0x0000 = Null Command (DO Nothing)
	0x0001 = Process display list
*/

#include "32x.h"
#include "vdp.h"

void SetBackgroundColour()
{
		int MD_BACKGROUND = 0;	
		
		// Convert to 32X Colour
		MD_BACKGROUND = MARS_SYS_COMM2;
		uint8_t red = (MD_BACKGROUND & 0xF) * 2;
		uint8_t green = ((MD_BACKGROUND >> 4) & 0xF) * 2;
		uint8_t blue =  ((MD_BACKGROUND >> 8) & 0xF) * 2;
			
		// Apply 32X Colour
		VDP_SetBackColour(0,red, green, blue);
}


// Vertical Blank Handler
void master_vbi_handler()
{
	SetBackgroundColour();
	
	// TEMPORARY!
	VDP_SetFrontColour(1 ,255, 0, 0);	
}

// Horizontal Blank Interrupt
void master_hbi_handler()
{

}

// Command Interrupt Handler
void master_cmd_handler()
{
	switch(MARS_SYS_COMM0)
	{
		
	}
}

int main(void)
{
	// Initialise the 32X VDP (256 colour indexed mode)
	VDP_Init();
	
	// Enable VBlank, HBlank and CMD interrupts 
	MARS_SYS_INTMSK =  MARS_SYS_INTMSK | 0x0E;
	
	// Main render loop
	while(1)
	{ 					
		// Clear screen
		VDP_ClearCurrentScreen();	
		/*
		// Process display list
		VDP_DrawSprite(0, 0, 32, 32, MARS_SYS_COMM6);
		VDP_DrawSprite(0, 0, 64, 32, MARS_SYS_COMM6);
		VDP_DrawSprite(0, 0, 96, 32, MARS_SYS_COMM6);
		VDP_DrawSprite(0, 0, 128,32, MARS_SYS_COMM6);
		*/
		// Flip buffers
		VDP_FlipBuffers(1);
	}
	return 0;
}

