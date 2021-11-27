# configs
dot files and other configurations

## .indent.pro
A simple 1TBS/K&R inspired style to be used with GNU indent.

Example:
```c
#include<stdio.h>
#define XXX 1

void do_something() {
    for (int i = 0; i < 10; i++) {
        printf("Panic!\n");
    }
}

void *test(int *data, int index) {
    if (data == NULL) {
        do_something();
    } else {
        switch (data[index]) {
            case 1:
                printf("It's a one!\n");
            default:
                printf("It's not a one!\n");
        }
    }
}
```

## sysctl.conf
Sane overrides for laptops/desktops with enough RAM and with SSDs/NVME.
- Reduce swapiness to 10 (can go even further to 1)
- Reduce Dirty Ratio and Dirty Background Ratio
- Increase max connections

