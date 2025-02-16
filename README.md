# UML_experiments

réf :

- https://kernel-team.pages.debian.net/kernel-handbook/ch-common-tasks.html#s-common-building
- https://www.youtube.com/watch?v=gfqeyxP4wWY

  
apt-get install linux-source
tar xaf /usr/src/linux-source.tar.xz
cd linux-source

scripts/config --disable MODULE_SIG
scripts/config --disable DEBUG_INFO
scripts/config --disable DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT

apt-get update && and apt-get upgrade
apt-get install build-essential linux-source bc kmod cpio flex libncurses5-dev libelf-dev libssl-dev rsync python3



