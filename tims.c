#include <sys/times.h>
#include <limits.h>

clock_t times(struct tms *buffer);

struct tms {
    clock_t tms_utime;
    clock_t tms_stime;
    clock_t tms_cutime;
    clock_t tms_cstime;
};

int main(void){
    int i;
    time_t t;
    struct tms mytms;
    clock_t t1, t2;
    if((t1=times(&mytms)) == -1){
        perror("times 1");
        exit(1);
    }

    for (i = 0; i < 9999999; i++){
        perror("times 2");
        exit(1);
    }

    printf("Real time : %.1f sec\n",(double)(t2-t1) / CLK_TCK);
    printf("Real time : %.1f sec\n",(double)mytms.tms_utime / CLK_TCK);
    printf("Real time : %.1f sec\n",(double)mytms.tms_stime / CLK_TCK);

    return 0;
}