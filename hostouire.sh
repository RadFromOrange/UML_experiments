    1  apt-get update && and apt-get upgrade  
    2  apt-get install linux-source
    3  tar xaf /usr/src/linux-source.tar.xz
    4* 
    5  sudo apt-get update && and apt-get upgrade  
    6  sudo apt-get install build-essential linux-source bc kmod cpio flex libncurses5-dev libelf-dev libssl-dev rsync python3
    7  sudo apt-get install linux-source
    8  sudo tar xaf /usr/src/linux-source.tar.xz
    9  sudo cd linux-source
   10  sudo find / -name ".config*"
   11  tar xaf /usr/src/linux-source-5.15.0.tar.xz
   12  cd linux-source-5.15.0
   13  cd  /usr/src/linux-source-5.15.0
   14  ls -alrt
   15  cd debian
   16  ls
   17  ls -alrt
   18  sudo find / -name ".config*"
   19  ls
   20  cd ..
   21  ls
   22  cd debian
   23  ls
   24  scripts/config 
   25  cd ..
   26  cd /workspace/UML_experiments/
   27  ls
   28  rm -fr /usr/src/linux-source-5.15.0*
   29  sudo rm -fr /usr/src/linux-source-5.15.0*
   30  clear
   31  sudo apt-get install build-essential linux-source bc kmod cpio flex libncurses5-dev libelf-dev libssl-dev rsync python3
   32  sudo apt-get install linux-source
   33  tar xaf /usr/src/linux-source-5.15.0.tar.xz
   34  sudo apt-get install linux-source
   35  find / -name 'linux-source-*'
   36  apt-get remove linux-source
   37  sudo apt-get remove linux-source
   38  apt-get get linux-source
   39  sudo apt-get install linux-source
   40  suod apt-get get linux-source
   41  sudo apt-get get linux-source
   42  sudo apt-get install  linux-source
   43  wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.178.tar.xz
   44  tar -xvf linux-5.15.178.tar.xz 
   45  cd linux-5.15.178/
   46  cp ../.config .
   47  make oldconfig arch=UM
   48  cp ../.config .
   49  make oldconfig arch=UM
   50  make arch=UM
   51  apt-get install zstd
   52  sudo apt-get install zstd
   53  nproc
   54  ./vmlinux 
   55  ./vmlinux --help
   56  fakechroot fakeroot debootstrap  bookworm ./rootfs
   57  sudo fakechroot fakeroot debootstrap  bookworm ./rootfs
   58  ls
   59  rm -rf ./root_fs 
   60  dd if=/dev/zero of=root_fs bs=1M count=1024
   61  mkfs.ext4 -L ALPINE_ROOT root_fs
   62  # mkdir /mnt/uml
   63  fuse2fs root_fs rootfs_deb 
   64  fuse2fs --noempty root_fs rootfs_deb 
   65  fuse2fs noempty root_fs rootfs_deb 
   66  # Create a mount point
   67  mkdir /mnt/rootfs_mount
   68  # Mount the disk image with fuse2fs
   69  fuse2fs root_fs /mnt/rootfs_mount
   70  # Copy all content from rootfs_deb into the mounted image
   71  cp -a rootfs_deb/* /mnt/rootfs_mount/
   72  # Ensure data is flushed to disk
   73  sync
   74  # Unmount the FUSE filesystem
   75  fusermount -u /mnt/rootfs_mount
   76  mkdir /mnt/rootfs_mount
   77  mkdir ./rootfs_mount
   78  fuse2fs root_fs ./rootfs_mount
   79  cp -a rootfs_deb/* ./rootfs_mount/
   80  sudo cp -a rootfs_deb/* ./rootfs_mount/
   81  cp -a rootfs_deb/* ./rootfs_mount/
   82  ls ./rootfs_mount/
   83  cp -a rootfs_deb/* ./rootfs_mount/
   84  sudo cp -a rootfs_deb/* /mnt/rootfs_mount/
   85  sudo cp -a rootfs_deb/* ./rootfs_mount/
   86  fuse2fs -o allow_other,uid=$(id -u),gid=$(id -g) root_fs ./rootfs_mount
   87  fuse2fs -o noempty,allow_other,uid=$(id -u),gid=$(id -g) root_fs ./rootfs_mount
   88  sudo cp -a rootfs_deb/* ./rootfs_mount/
   89  mkdir oo
   90  fuse2fs -o noempty,allow_other,uid=$(id -u),gid=$(id -g) root_fs ./oo
   91  vi /etc/fuse.conf
   92  suod vi /etc/fuse.conf
   93  sudo vi /etc/fuse.conf
   94  fuse2fs -o noempty,allow_other,uid=$(id -u),gid=$(id -g) root_fs ./oo
   95  fuse2fs -o allow_other,uid=$(id -u),gid=$(id -g) root_fs ./oo
   96  sudo cp -a rootfs_deb/* ./oo
   97  umount rootfs
   98  umount root_fs
   99  mkdir -p ~/mnt_root_fs
  100  fuse2fs -o uid=$(id -u),gid=$(id -g) root_fs ~/mnt_root_fs
  101  ls -la ~/mnt_root_fs
  102  ls -la ~/mnt_root_fs/
  103  fuse2fs -o uid=$(id -u),gid=$(id -g) root_fs ~/mnt_root_fs
  104  sudo apt-get install e2tools
  105  e2ls -l root_fs
  106  history > ../hostouire.sh
