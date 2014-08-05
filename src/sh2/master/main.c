#include <sys/types.h>
#include <fixmath.h>

/* Sonic The Hedgehog 32X Remix Renderer
	Programmed by SoullessSentinel
	
	Uses/Trashes the following 32X Communication registers:

	MARS_SYS_COMM0 - Master Command
	MARS_SYS_COMM2 - Background Colour / Data upload
	MARS_SYS_COMM4 - Data upload
	MARS_SYS_COMM6 - Data upload
	MARS_SYS_COMM8 - Data upload
	
	
	Possible Commands are as follows:
	0x0000 = Null Command (DO Nothing)
	0x0001 = Add to display list
	0x0002 = Clear display list
*/

// IMPORTANT TODO:
// We need to keep track of what pixels have changed, and only update those pixels when clearing the screen.
// One idea I've had is to store a copy of the frame buffer in main RAM, but this wastes resources.
// An alternative would be a data structure which contains a list of rectangles that need updating.
//
// We also need to remove this hacky approach of receiving sprite data from the Mega Drive processor
// and implement a proper display list system, where a list of draw commands can be sent in a batch 
// at Vint to then be processed.

#include "32x.h"
static uint16_t currentFB = 0;

typedef struct
{
	uint8_t width;
	uint8_t height;
	uint8_t rotatable;
	uint8_t format;
}ArtFrame_t;

void ClearCurrentScreen()
{
	for(int line = 0; line < 240; line++)
	{
		MARS_VDP_FILADR = 0x100 + (line*160);
		MARS_VDP_FILLEN = 0xFF;
		MARS_VDP_FILDAT = 0x0000;
	}
}

void FlipBuffers(int32_t wait)
{
	MARS_VDP_FBCTL = currentFB ^ 1;
	if (wait)
	{
		// Wait for flip to succeed
		while ((MARS_VDP_FBCTL & MARS_VDP_FS) == currentFB) ;
		
		// Update current frame buffer
		currentFB ^= 1;
	}
}

int screenChanged = 0;

void DrawSprite(uint16_t id, uint16_t frame, uint16_t xpos, uint16_t ypos, int16_t angle)
{
	// Get offset to art data
	uint32_t* artPtr = (uint32_t*)((uint32_t*)0x02200400)[id];
	
	// Open artFrame
	ArtFrame_t* artFrame = (ArtFrame_t*)((uint32_t)artPtr + artPtr[frame]);

	// Get pointer to source image in ROM
	uint8_t* image_raw = (uint8_t*)((int)artFrame + 4);
	
	// Move image so that the horizontal origin is at the centre.
	xpos-=artFrame->width >> 1;
	
	// Get pointer to frame buffer
	volatile uint8_t *frameBuffer = (uint8_t*)&MARS_FRAMEBUFFER;
	
	// Draw the frame
	
	// Read object status
	uint8_t obRender =  (MARS_SYS_COMM4 & 0xFF);
			
	for(int x = 0, rx = artFrame->width-1; x < artFrame->width; x++, rx--) 
	{
		int rx_xpos = rx + xpos;
		int x_xpos = x + xpos;
		
		for(int y = 0, ry = artFrame->height-1; y < artFrame->height; y++, ry--) 
		{	
			int index =  0;
			int ry_ypos = ry + ypos;
			int y_ypos = y + ypos;
			
		
			// Check if X flipped
			if((obRender & 1) == 1)
			{
				// Check if Y is also flipped
				if((obRender & 2) == 2)
				{
					// FAST MULTIPLY OF 320
					//x <<8 + x <<6
					index = 0x200 + (((ry_ypos) << 8) + ((ry_ypos) << 6)) + (rx_xpos);
				}
				// Flip on X axis only
				else
				{
					index = 0x200 + (((y_ypos) << 8) + ((y_ypos) << 6)) + (rx_xpos);
				}				
			}
			// Check if only Y flipped
			else if((obRender & 2) == 2)
			{
				index = 0x200 + (((ry_ypos) << 8) + ((ry_ypos) << 6)) + (x_xpos);
			}
			else
			{
				index = 0x200 + (((y_ypos) << 8) + ((y_ypos) << 6)) + (x_xpos);
			}

			// Prevent rendering out of range
			if(index >= 0x200 && index < (0x12E00))
			{
				// Make sure the pixel is on screen
				if (x + xpos < 320 && y + ypos < 240)
				{
					frameBuffer[index] = image_raw[y * artFrame->width + x];
				}							
			}
		}
	}		
}

// Vertical Blank Handler
void master_vbi_handler()
{
	ClearCurrentScreen();	

	// Read entry from display list
	// If entry is valid, process and remove from queue

	// Flip buffers
	int MD_BACKGROUND = 0;	
	
	// Convert to 32X Colour
	MD_BACKGROUND 	= MARS_SYS_COMM2;
	uint8_t red 	= (MD_BACKGROUND & 0xF) << 1;
	uint8_t green	= ((MD_BACKGROUND >> 4) & 0xF) << 1;
	uint8_t blue 	= ((MD_BACKGROUND >> 8) & 0xF) << 1;
			
	// Apply 32X Colour
	volatile uint16_t *palette = &MARS_CRAM;
	palette[0] = BG_COLOR(red, green, blue);
	
	// Process display list
	DrawSprite(MARS_SYS_COMM0 & 0xFF, MARS_SYS_COMM4 >> 8, MARS_SYS_COMM6, MARS_SYS_COMM8, 0);	

	FlipBuffers(1);
}

// Horizontal Blank Interrupt
void master_hbi_handler()
{
	
}

// Command Interrupt Handler
void master_cmd_handler()
{

}

void InitVDP()
{
	volatile uint16_t *frameBuffer16 = &MARS_FRAMEBUFFER;
	int32_t i;

	// Wait for the SH2 to gain access to the VDP
	while ((MARS_SYS_INTMSK & MARS_SH2_ACCESS_VDP) == 0);

	// Set 8-bit paletted mode, 224 lines
	MARS_VDP_DISPMODE = MARS_224_LINES | MARS_VDP_MODE_256;

	// init both framebuffers

	// Flip the framebuffer selection bit and wait for it to take effect
	MARS_VDP_FBCTL = currentFB ^ 1;
	while ((MARS_VDP_FBCTL & MARS_VDP_FS) == currentFB) ;	

	currentFB ^= 1;
   
	// rewrite line table
	for (i=0; i<240; i++)
	{
		frameBuffer16[i] = i*160 + 0x100; /* word offset of line */
	}
	
	// clear screen
	for (i=0x100; i<0x10000; i++)
	{
		frameBuffer16[i] = 0;
	}

	// Flip the frame buffer selection bit and wait for it to take effect
	MARS_VDP_FBCTL = currentFB ^ 1;
	while ((MARS_VDP_FBCTL & MARS_VDP_FS) == currentFB) ;
	currentFB ^= 1;
	
	// rewrite line table
	for (i=0; i<240; i++)
	frameBuffer16[i] = i*160 + 0x100; /* word offset of line */
		
	// clear screen
	for (i=0x100; i<0x10000; i++)
	{
		frameBuffer16[i] = 0;
	}
}

int main(void)
{
	// Initialise the 32X VDP (256 colour indexed mode)
	InitVDP();
	
	// Enable VBlank, HBlank and CMD interrupts 
	MARS_SYS_INTMSK =  MARS_SYS_INTMSK | 0x0E;
	
	// Load palette (TODO: Proper palette loading for both on land and underwater)
	uint16_t* palette = (uint16_t*)0x02200000;
	uint16_t* cram = (uint16_t*)0x20004200;
	for(int i = 0; i < 256; i++)
	{
		cram[i] = palette[i];
	}
	
	while(1)
	{ 					
		switch(MARS_SYS_COMM0 >> 8)
		{
			// Add to display list
			case 01:	
				break;
			// Clear Display list
			case 02:
				break;
		}
		
		// Clear command register
		MARS_SYS_COMM0 &= 0x00FF;
	}
	return 0;
}


