//Numpy array shape [1, 1, 1]
//Min 0.001953125000
//Max 0.007812500000
//Number of zeros 0

#ifndef S16_H_
#define S16_H_

#ifndef __SYNTHESIS__
exponent_scale16_t s16[16];
#else
exponent_scale16_t s16[16] = {{1.0, -7}, {1.0, -7}, {1.0, -7}, {1.0, -8}, {1.0, -7}, {1.0, -8}, {1.0, -7}, {1.0, -8}, {1.0, -8}, {1.0, -8}, {1.0, -8}, {1.0, -9}, {1.0, -8}, {1.0, -7}, {1.0, -7}, {1.0, -8}};

#endif

#endif
