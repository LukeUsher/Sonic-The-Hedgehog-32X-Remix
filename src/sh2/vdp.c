#include "32x.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include "libfixmath/fixmath.h"

static uint16_t currentFB = 0;

void VDP_SetFrontColour(int32_t s, int32_t r, int32_t g, int32_t b)
{
    volatile uint16_t *palette = &MARS_CRAM;
    palette[s] = COLOR(r, g, b);
}

void VDP_SetBackColour(int32_t s, int32_t r, int32_t g, int32_t b)
{
    volatile uint16_t *palette = &MARS_CRAM;
    palette[s] = BG_COLOR(r, g, b);
}

uint8_t image[] =
{
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
};

void VDP_Init()
{
    volatile uint16_t *frameBuffer16 = &MARS_FRAMEBUFFER;
    int32_t i;

    // Wait for the SH2 to gain access to the VDP
    while ((MARS_SYS_INTMSK & MARS_SH2_ACCESS_VDP) == 0) ;

    // Set 8-bit paletted mode, 224 lines
    MARS_VDP_DISPMODE = MARS_224_LINES | MARS_VDP_MODE_256;

    // init both framebuffers

    // Flip the framebuffer selection bit and wait for it to take effect
    MARS_VDP_FBCTL = currentFB ^ 1;
    while ((MARS_VDP_FBCTL & MARS_VDP_FS) == currentFB) ;
   currentFB ^= 1;
   
    // rewrite line table
    for (i=0; i<224; i++)
        frameBuffer16[i] = i*160 + 0x100; /* word offset of line */
		
    // clear screen
    for (i=0x100; i<0x10000; i++)
        frameBuffer16[i] = 0;

    // Flip the framebuffer selection bit and wait for it to take effect
    MARS_VDP_FBCTL = currentFB ^ 1;
    while ((MARS_VDP_FBCTL & MARS_VDP_FS) == currentFB) ;
    currentFB ^= 1;
	
    // rewrite line table
    for (i=0; i<224; i++)
        frameBuffer16[i] = i*160 + 0x100; /* word offset of line */
		
    // clear screen
    for (i=0x100; i<0x10000; i++)
        frameBuffer16[i] = 0;
}

void VDP_ClearCurrentScreen()
{
    volatile uint16_t *frameBuffer16 = &MARS_FRAMEBUFFER;

	// Clear current frame buffer
    for (int i=0x100; i<0x10000; i++)
        frameBuffer16[i] = 0;

}

void VDP_FlipBuffers(int32_t wait)
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

void VDP_WaitForFlip()
{
	// Wait for flip to succeed
    while ((MARS_VDP_FBCTL & MARS_VDP_FS) == currentFB);
	
	// Update current frame buffer
    currentFB ^= 1;
}

void VDP_ProcessDisplayList(void* list)
{
	// Read Sprite ID from display list 	(16-bit)
	// If ID=0, we are finished
	// Read sprite frame from display list 	(16-bit)
	// Read flags from display list			(8-bit)
	// Read sprite angle from display list	(8-bit)
	// Read X Position						(16 bit)
	// Read Y Position						(16 bit)
	
	// Write the sprite to the frame buffer
}

void VDP_DrawSprite(uint16_t id, uint16_t frame, uint16_t xpos, uint16_t ypos, uint16_t angle)
{
	// TODO: Pre calculate sinus table for 0-255 range, preventing the need
	// for both the degree format conversion, and the sinus calculation.
	// The sinus table WILL be huge, so it will be best to store it in ROM.

	volatile uint8_t *frameBuffer = (uint8_t*)&MARS_FRAMEBUFFER;
	
	int width = 32;
	int height = 32;
	
	// If angle is set, draw rotated, else, don't rotate. 
	// No point processing rotations if not required.
	if(angle > 0)
	{
		int hwidth = width / 2;
		int hheight = height / 2;	

		// Convert angle to fix16_t (we can do non integer operations now, yay)
		fix16_t angle16 = fix16_from_int((int)angle);
		
		// Convert from BAMS (8-bit) to Degrees
		angle = (fix16_mul(fix16_div(angle16, fix16_from_int(256)), fix16_from_int(360)));

		fix16_t angle_sin = fix16_sin(angle16);
		fix16_t angle_cos = fix16_cos(angle16);


		for(int x = 0; x < width; x++) 
		{
			for(int y = 0; y < height; y++) 
			{
				int xt = x - hwidth;
				int yt = y - hheight;
				
				int xs = fix16_to_int(fix16_sadd(fix16_mul(angle_cos, fix16_from_int(xt)), -fix16_mul(angle_sin, fix16_from_int(yt)))) + hwidth;
				int ys = fix16_to_int(fix16_sadd(fix16_mul(angle_sin, fix16_from_int(xt)),  fix16_mul(angle_cos, fix16_from_int(yt)))) + hheight;

				// Doesn't matter that we write blank pixels, as byte writes of 0x00 are ignored
				// Because of this, we can avoid the if() check for every pixel, saving a few cycles
				frameBuffer[0x200 + ((y + ypos) * 320) + (x + xpos)] = image[ys * width + xs];
			}
		}
	}
	else
	{
		for(int x = 0; x < width; x++) 
		{
			for(int y = 0; y < height; y++) 
			{	
				frameBuffer[0x200 + ((y + ypos) * 320) + (x + xpos)] = image[y * width + x];
			}
		}	
	}
}




