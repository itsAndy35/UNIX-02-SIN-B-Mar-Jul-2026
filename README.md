sudo apt update #
sudo apt upgrade #
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86 #

Para que sirve cada paquete
git                Version control system used to download and manage source code repositories.
vim                Terminal-based text editor used to create and modify configuration or source files.
make               Build automation tool that executes instructions defined in a Makefile.
gcc                Compiler that translates C source code into executable programs.
libncurses-dev     Library for creating text-based user interfaces in the terminal (required for menuconfig).
flex               Tool that generates lexical analyzers used during software compilation.
bison              Tool that generates parsers (syntax analyzers), often used together with flex.
bc                 Command-line calculator used by build scripts for mathematical operations.
cpio               Archiving tool used to create and extract files, commonly for initramfs images.
libelf-dev         Library for handling ELF files, the standard executable format in Linux.
libssl-dev         Cryptography and SSL library used for security features and digital signatures.
syslinux           Lightweight bootloader used to boot operating systems from disks or USB drives.
dosfstools         Utilities for creating and checking FAT file systems.
qemu-system-x86    Emulator/virtualizer used to run x86 operating systems in virtual machines.

git clone --depth 1 https://github.com/torvalds/linux.git #Downloads a lightweight copy of the latest Linux kernel source code from GitHub without the full commit history
cd linux # Change to linux directory
make menuconfig # Opens a terminal-based configuration menu to customize kernel build options before compiling the Linux kernel
make -j 2 #compile or build software projects faster by using parallel processing.
sudo mkdir /boot-files #Create a new folder called boot-files at the top level of your Linux system's hard drive.
sudo cp arch/x86/boot/bzImage /boot files #This command makes a copy of your newly compiled kernel to the folder we created.
git clone --depth 1 https://git.busybox.net/busybox #
cd busybox #change directory to busybox