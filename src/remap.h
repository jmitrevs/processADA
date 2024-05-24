#ifndef REMAP_H_
#define REMAP_H_

#include <cstdint>

// this is only for collection plane, and it subtracts outs 1600 from the returned vallue
// This is for channels 80 - 128 (but wibframechan has 80 subtracted)
inline int16_t getOfflineChannelZa(uint16_t crate, uint16_t slot, uint16_t link, uint16_t wibframechan ) {

    const auto up = static_cast<bool>(crate & 1); // odd number crates are upright
    const auto wib = slot + 1;

    // std::cout << "up = " << up << ", slot = " << static_cast<unsigned>(slot) << ", wib = " << static_cast<unsigned>(wib) << ", link = " << static_cast<unsigned>(link) << ", frame = " << wibframechan << std::endl;

    if (!up && wib == 1 && link == 1) {
        return wibframechan + 528;
    } else if (!up && wib == 2 && link == 1) {
        return wibframechan + 624;
    } else if (!up && wib == 1 && link == 0) {
        return wibframechan + 720;
    } else if (!up && wib == 2 && link == 0) {
        return wibframechan + 816;
    } else if (!up && wib == 3 && link == 1) {
        return wibframechan + 912;
    } else if (!up && wib == 4 && link == 1) {
        return 431 - wibframechan;
    } else if (!up && wib == 3 && link == 0) {
        return 335 - wibframechan;
    } else if (!up && wib == 4 && link == 0) {
        return 239 - wibframechan;
    } else if (!up && wib == 5 && link == 1) {
        return 143 - wibframechan;
    } else if (!up && wib == 5 && link == 0) {
        return 47 - wibframechan;
    }

    else if (up && wib == 1 && link == 1) {
        return wibframechan + 48;
    } else if (up && wib == 2 && link == 1) {
        return wibframechan + 144;
    } else if (up && wib == 1 && link == 0) {
        return wibframechan + 240;
    } else if (up && wib == 2 && link == 0) {
        return wibframechan + 336;
    } else if (up && wib == 3 && link == 1) {
        return wibframechan + 432;
    } else if (up && wib == 4 && link == 1) {
        return 911 - wibframechan;
    } else if (up && wib == 3 && link == 0) {
        return 815 - wibframechan;
    } else if (up && wib == 4 && link == 0) {
        return 719 - wibframechan;
    } else if (up && wib == 5 && link == 1) {
        return 623 - wibframechan;
    } else if (up && wib == 5 && link == 0) {
        return 527 - wibframechan;
    }

    return -2;
}

// this is only for collection plane, and it subtracts outs 1600 from the returned vallue
// This is for 208-256 (but wibframe has 208 subtracted)
inline int16_t getOfflineChannelZb(uint16_t crate, uint8_t slot, uint8_t link, uint16_t wibframechan ) {

    const auto up = static_cast<bool>(crate & 1); // odd number crates are upright
    const auto wib = slot + 1;

    if (!up && wib == 1 && link == 1) {
        return wibframechan + 480;
    } else if (!up && wib == 2 && link == 1) {
        return wibframechan + 576;
    } else if (!up && wib == 1 && link == 0) {
        return wibframechan + 672;
    } else if (!up && wib == 2 && link == 0) {
        return wibframechan + 768;
    } else if (!up && wib == 3 && link == 1) {
        return wibframechan + 864;
    } else if (!up && wib == 4 && link == 1) {
        return 479 - wibframechan;
    } else if (!up && wib == 3 && link == 0) {
        return 383 - wibframechan;
    } else if (!up && wib == 4 && link == 0) {
        return 287 - wibframechan;
    } else if (!up && wib == 5 && link == 1) {
        return 191 - wibframechan;
    } else if (!up && wib == 5 && link == 0) {
        return 95 - wibframechan;
    }

    else if (up && wib == 1 && link == 1) {
        return wibframechan;
    } else if (up && wib == 2 && link == 1) {
        return wibframechan + 96;
    } else if (up && wib == 1 && link == 0) {
        return wibframechan + 192;
    } else if (up && wib == 2 && link == 0) {
        return wibframechan + 288;
    } else if (up && wib == 3 && link == 1) {
        return wibframechan + 384;
    } else if (up && wib == 4 && link == 1) {
        return 959 - wibframechan;
    } else if (up && wib == 3 && link == 0) {
        return 863 - wibframechan;
    } else if (up && wib == 4 && link == 0) {
        return 767 - wibframechan;
    } else if (up && wib == 5 && link == 1) {
        return 671 - wibframechan;
    } else if (up && wib == 5 && link == 0) {
        return 575 - wibframechan;
    }

    return -2;
}

#endif
