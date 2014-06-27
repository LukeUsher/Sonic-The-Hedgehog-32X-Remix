#ifndef __libfixmath_fixmath_h__
#define __libfixmath_fixmath_h__

#ifdef __cplusplus
extern "C"
{
#endif

/*!
        \file fixmath.h
        \brief Functions to perform fast accurate fixed-point math operations.
*/

#include "uint32.h"
#include "fract32.h"
#include "fix16.h"

// Define speedup constants
#define FIXMATH_FAST_SIN
#define FIXMATH_NO_ROUNDING

#ifdef __cplusplus
}
#endif

#endif