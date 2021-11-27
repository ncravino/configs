# Kernel Configurations

The following configurations are used to tune the kernel for some specific use cases.

## Disable Mitigations for CPU-Bound Exploits
It's self explanatory and will open the computer to the said exploits.

Just add `mitigations=off` as a kernel parameter in `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` or equivalent.

## Change the IO scheduler
Usually the IO scheduler is set to `CFS`, for modern use cases either `deadline` or `noop` are better choices.

Just add `elevator=noop` or `elevator=deadline` as a kernel parameter in `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` or equivalent.

## Use zswap
Compress Swap and put it into RAM (if you have enough).

Check if it is already enabled with `grep -R . /sys/module/zswap/parameters/` look for a `Y` after `/sys/module/zswap/parameters/enabled`.

If not enabled add `zswap.enabled=1 zswap.compressor=lz4 zswap.max_pool_percent=15 zswap.zpool=z3fold` as kernel parameters in `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` or equivalent.

You can control the amount of maximum RAM to be used by zswap before using the swap file with `zswap.max_pool_percent=15`.

## Don't forget to apply the modifications

You need to run `sudo update-grub` or equivalent for your bootloader.
