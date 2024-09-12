//Numpy array shape [8]
//Min -2.000000000000
//Max 1.000000000000
//Number of zeros 5

#ifndef B15_H_
#define B15_H_

#ifndef __SYNTHESIS__
bias15_t b15[8];
#else
bias15_t b15[8] = {1, 0, 0, 0, -2, 0, -1, 0};

#endif

#endif
