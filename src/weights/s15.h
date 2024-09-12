//Numpy array shape [1, 1, 1]
//Min 0.000976562500
//Max 0.007812500000
//Number of zeros 0

#ifndef S15_H_
#define S15_H_

#ifndef __SYNTHESIS__
exponent_scale15_t s15[8];
#else
exponent_scale15_t s15[8] = {{1.0, -7}, {1.0, -7}, {1.0, -8}, {1.0, -8}, {1.0, -10}, {1.0, -7}, {1.0, -8}, {1.0, -8}};

#endif

#endif
