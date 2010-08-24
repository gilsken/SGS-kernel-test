################################################################################

1. How to Build
	- decompress Toolchain : tar xzvf arm-cortex_a8-linux-uclibcgnueabi.tar.gz
        the toolchain should be in same directory as linux-2.6.29 and modules

	- run build_kernel.sh
		$ ./build_kernel.sh

	- run build config only
		$ ./build_kernel.sh config

	- run menuconfig
		$ ./build_kernel.sh menuconfig

	- run build kernel only
		$ ./build_kernel.sh kernel

	- run build module only
		$ ./build_kernel.sh module

	- run install module
		$ ./build_kernel.sh module install

2. Output files
	- Kernel : linux-2.6.29/arch/arm/boot/zImage
	- module : modules/*/*.ko

3. How to Clean
	- run build_kernel.sh clean
		$ ./build_kernel.sh clean

	- run clean kernel only
		$ ./build_kernel.sh kernel clean

	- run clean module only
		$ ./build_kernel.sh module clean

################################################################################
