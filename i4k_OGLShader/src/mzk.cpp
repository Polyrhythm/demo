//--------------------------------------------------------------------------//
// iq / rgba  .  tiny codes  .  2008/2015                                   //
//--------------------------------------------------------------------------//

#include <math.h>
#include "mzk.h"
#include "system.h"

#define TWO_PI 6.28318530717958


// put here your synth
void mzk_init( short *buffer )
{
    float freq = 1.0;
    double phase = 0;
    double phaseInc = TWO_PI / MZK_RATE * freq;

    for (int i = 0; i < MZK_NUMSAMPLES; i++)
    {
        buffer[i] = 32767 * (sin(phase) * 1.0);
        phase += phaseInc;

        if (phase >= TWO_PI) phase -= TWO_PI;
    }
}
