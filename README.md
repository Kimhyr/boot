WARNING: this is far from complete, so it's not UEFI-compatable at all

# Boot

A simple UEFI-compatable x86-64 bootloader created for educational purposes.

## Building

If you want to build and emulate the bootloader,

1. enter `make em` in the root directory (`/`).

If you don't want to emulate it and just want to build it,

1. enter `make -C source all` in the root directory.

The build files should be located in the directory `/build`.

## Emulating

1. Enter `make em` in the root directory.
