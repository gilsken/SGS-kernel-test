cmd_/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/mtd/.check := for f in inftl-user.h mtd-abi.h mtd-user.h nftl-user.h ubi-user.h ; do echo "/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/mtd/$${f}"; done | xargs perl /home/gilsken/toolchain-ctng18/targets/src/linux-2.6.33.2/scripts/headers_check.pl /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include arm; touch /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/mtd/.check