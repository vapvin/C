#include <sys/times.h>
#include <limits.h>

clock_t times(struct tms *buffer);

struct tms {
    clock_t tms_utime;
    clock_t tms_stime;
    clock_t tms_cutime;
    clock_t tms_cstime;
};

