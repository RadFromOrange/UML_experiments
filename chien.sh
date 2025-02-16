rm -fr macron
mkdir macron
cd macron
apt-get update
apt-get install -y fakechroot fakeroot debootstrap slirp user-mode-linux vim tree
rm -fr ./debian-rootfs/
mkdir ./debian-rootfs/ 
fakechroot fakeroot debootstrap --include=net-tools,iproute2,sl  bookworm ./debian-rootfs/  http://deb.debian.org/debian/
# sudo chroot ./debian-rootfs apt install net-tools


rm -rf root_fs
dd if=/dev/zero of=root_fs bs=1M count=1024
mkfs.ext4 -L DEBIAN_ROOT root_fs
mkdir -p ./tmp/mnt/uml
apt-get install fuse2fs fuse
sed -i 's/#user_allow_other/user_allow_other/g'   /etc/fuse.conf
fuse2fs -o allow_other,uid=$(id -u),gid=$(id -g) root_fs  ./tmp/mnt/uml

cp -a debian-rootfs/. ./tmp/mnt/uml
touch ./tmp/mnt/uml/salop
ls -alrt ./tmp/mnt/uml
umount ./tmp/mnt/uml
export TMPDIR=./tmp
linux.uml ubda=root_fs rw mem=64M init=/bin/sh rootfstype=ext4 eth0=slirp TERM=linux quiet
