//Numpy array shape [8]
//Min -0.012724709697
//Max 0.027541615069
//Number of zeros 0

#ifndef B16_H_
#define B16_H_

#ifndef __SYNTHESIS__
dense_bias_t b16[8];
#else
dense_bias_t b16[8] = {0.0275416151, -0.0127247097, 0.0172035098, 0.0094223991, 0.0161079820, -0.0117295440, 0.0221073534, 0.0188806280};
#endif

#endif
