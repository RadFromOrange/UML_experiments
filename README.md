# UML_experiments

réf :

- https://kernel-team.pages.debian.net/kernel-handbook/ch-common-tasks.html#s-common-building
- https://www.youtube.com/watch?v=gfqeyxP4wWY

sudo apt-get update && and apt-get upgrade  
sudo apt-get install build-essential linux-source fuse2fs bc kmod cpio flex libncurses5-dev libelf-dev libssl-dev rsync python3
sudo apt-get install linux-source
tar xaf /usr/src/linux-source-5.15.0.tar.xz
cd linux-source-5.15.0

wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.178.tar.xz
tar -xvf linux-5.15.178.tar.xz 
cd linux-5.15.178/
cp ../.config .
make oldconfig arch=UM

scripts/config --disable MODULE_SIG
scripts/config --disable DEBUG_INFO
scripts/config --disable DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT

using debian host conifg ....

cp /boot/.config*  .
make oldconfig ARCH=um
make ARCH=um



