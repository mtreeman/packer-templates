# Virtualbox
# Depends: kernel-stuff, epel, virtualbox_dependencies
VBOX_VERSION=$(cat /root/.vbox_version)

yum -y --enablerepo epel install dkms

cd /tmp
mount -o loop /root/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /root/VBoxGuestAdditions_*.iso
