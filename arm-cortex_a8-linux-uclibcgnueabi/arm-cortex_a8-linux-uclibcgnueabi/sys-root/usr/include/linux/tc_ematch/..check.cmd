cmd_/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/tc_ematch/.check := for f in tc_em_cmp.h tc_em_meta.h tc_em_nbyte.h tc_em_text.h ; do echo "/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/tc_ematch/$${f}"; done | xargs perl /home/gilsken/toolchain-ctng18/targets/src/linux-2.6.33.2/scripts/headers_check.pl /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include arm; touch /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/tc_ematch/.check
