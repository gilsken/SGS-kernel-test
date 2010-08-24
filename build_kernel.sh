#/bin/bash

if [ "$CPU_JOB_NUM" = "" ] ; then
	CPU_JOB_NUM=8
fi

TOOLCHAIN=`pwd`/arm-cortex_a8-linux-uclibcgnueabi/bin
TOOLCHAIN_PREFIX=arm-cortex_a8-linux-uclibcgnueabi-

KERNEL_BUILD_DIR=linux-2.6.29
MODULES_BUILD_DIR=modules
PROJECT_NAME=aries
HW_BOARD_REV="03"

export PRJROOT=$PWD
export PROJECT_NAME
export HW_BOARD_REV
export LD_LIBRARY_PATH=.:${TOOLCHAIN}/../lib
echo "************************************************************"
echo "* EXPORT VARIABLE		                            	 *"
echo "************************************************************"
echo "PRJROOT=$PRJROOT"
echo "PROJECT_NAME=$PROJECT_NAME"
echo "HW_BOARD_REV=$HW_BOARD_REV"
echo "************************************************************"

BUILD_CONFIG()
{
	echo "************************************************************"
	echo "* BUILD_CONFIG                              	 *"
	echo "************************************************************"
	echo
	pushd $KERNEL_BUILD_DIR
	export KDIR=`pwd`
	make ARCH=arm $PROJECT_NAME"_rev"$HW_BOARD_REV"_defconfig"
	popd
}


BUILD_MODULE()
{
	echo "************************************************************"
	echo "* BUILD_MODULE	                                       	 *"
	echo "************************************************************"
	echo $1 $2
	pushd $KERNEL_BUILD_DIR
	export KDIR=`pwd`
	popd
	pushd $MODULES_BUILD_DIR
	make $1 $2 ARCH=arm HOSTCFLAGS="-O2" CROSS_COMPILE=$TOOLCHAIN/$TOOLCHAIN_PREFIX
	popd
}

BUILD_KERNEL()
{
	echo "************************************************************"
	echo "*        BUILD_KERNEL                                      *"
	echo "************************************************************"
	echo

	pushd $KERNEL_BUILD_DIR
	make HOSTCFLAGS="-O2" ARCH=arm CROSS_COMPILE=$TOOLCHAIN/$TOOLCHAIN_PREFIX $2 $3
	#make -j$CPU_JOB_NUM HOSTCFLAGS="-g -O2" ARCH=arm CROSS_COMPILE=$TOOLCHAIN/$TOOLCHAIN_PREFIX
	popd
}

BUILD_CLEAN()
{
	echo "********************************************************************************"
	echo "* Clean Kernel                                                                 *"
	echo "********************************************************************************"
	pushd $KERNEL_BUILD_DIR
	make clean
	popd
	pushd $MODULES_BUILD_DIR
	make clean
	popd
}

BUILD_MENUCONFIG()
{
	echo "********************************************************************************"
	echo "* menuconfig                                                                   *"
	echo "********************************************************************************"
	pushd $KERNEL_BUILD_DIR
	make menuconfig
	popd
}

PRINT_USAGE()
{
	echo "************************************************************"
	echo "* build_kernel [config|kernel|module|menuconfig|clean]    *"
	echo "************************************************************"
	echo
}

PRINT_TITLE()
{
	echo
	echo "************************************************************"
	echo "*                     MAKE PACKAGES"
	echo "************************************************************"
	echo "* 1. kernel : zImage"
	echo "* 2. modules"
	echo "************************************************************"
}


echo "$1 $2 $3"

case "$1" in
	clean)
		BUILD_CLEAN
		echo " It's done... "
		exit
		;;
	config)
		BUILD_CONFIG
		echo " It's done... "
		exit
		;;
	kernel)
		BUILD_KERNEL $2 $3
		echo " It's done... "
		exit
		;;
	module)
		BUILD_MODULE $2 $3
		echo " It's done... "
		exit
		;;
	menuconfig)
		BUILD_MENUCONFIG
		echo " It's done... "
		exit
		;;
	
esac

##############################################################
#                   MAIN FUNCTION                            #
##############################################################
if [ $# -gt 3 ]
then
	echo
	echo "**************************************************************"
	echo "*  Option Error                                              *"
	PRINT_USAGE
	exit 1
fi

START_TIME=`date +%s`

PRINT_TITLE

BUILD_CONFIG
BUILD_KERNEL
BUILD_MODULE

END_TIME=`date +%s`
let "ELAPSED_TIME=$END_TIME-$START_TIME"
echo "Total compile time is $ELAPSED_TIME seconds"

