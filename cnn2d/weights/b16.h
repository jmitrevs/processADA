//Numpy array shape [8]
//Min -0.012724709697
//Max 0.027541615069
//Number of zeros 0

#ifndef B16_H_
#define B16_H_

#ifndef __SYNTHESIS__
dense_bias_t b16[8];
#else
dense_bias_t b16[8] = {0.027542, -0.012725, 0.017204, 0.009422, 0.016108, -0.011730, 0.022107, 0.018881};
#endif

#endif
