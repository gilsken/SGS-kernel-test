cmd_/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/netfilter_ipv4/.check := for f in ip_queue.h ip_tables.h ipt_CLUSTERIP.h ipt_ECN.h ipt_LOG.h ipt_REJECT.h ipt_SAME.h ipt_TTL.h ipt_ULOG.h ipt_addrtype.h ipt_ah.h ipt_ecn.h ipt_realm.h ipt_ttl.h ; do echo "/home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/netfilter_ipv4/$${f}"; done | xargs perl /home/gilsken/toolchain-ctng18/targets/src/linux-2.6.33.2/scripts/headers_check.pl /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include arm; touch /home/gilsken/x-tools/arm-cortex_a8-linux-uclibcgnueabi/arm-cortex_a8-linux-uclibcgnueabi//sys-root/usr/include/linux/netfilter_ipv4/.check
