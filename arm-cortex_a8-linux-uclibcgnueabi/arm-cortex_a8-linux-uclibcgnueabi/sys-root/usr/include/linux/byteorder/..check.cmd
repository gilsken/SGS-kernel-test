cmd_/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/byteorder/.check := for f in big_endian.h little_endian.h ; do echo "/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/byteorder/$${f}"; done | xargs perl /home/gilsken/toolchain-ctng18/targets/src/linux-2.6.33.2/scripts/headers_check.pl /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include arm; touch /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/byteorder/.check