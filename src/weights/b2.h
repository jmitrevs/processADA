//Numpy array shape [8]
//Min -2.000000000000
//Max 1.000000000000
//Number of zeros 5

#ifndef B2_H_
#define B2_H_

#ifndef __SYNTHESIS__
bias2_t b2[8];
#else
bias2_t b2[8] = {0, 0, 0, 0, 0, 0, 0, 0};

#endif

#endif
