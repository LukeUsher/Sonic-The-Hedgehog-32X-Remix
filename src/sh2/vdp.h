#ifndef VDP_H
#define VDP_H

#include <stdarg.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

extern void VDP_Init();
extern void VDP_FlipBuffers(int32_t wait);
extern void VDP_WaitForFlip();

extern void VDP_ClearCurrentScreen();

// CRAM Stuff
extern void VDP_SetFrontColour(int32_t s, int32_t r, int32_t g, int32_t b);
extern void VDP_SetBackColour(int32_t s, int32_t r, int32_t g, int32_t b);

// Draw Commands
extern void VDP_DrawSprite(uint16_t id, uint16_t frame, uint16_t x, uint16_t y, uint16_t angle);

#endif