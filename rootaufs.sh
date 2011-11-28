# Create directories for mount points
mkdir /aufs
mkdir /ro
mkdir /rw

# Remount root using aufs and tmpfs
mount -t tmpfs aufs-tmpfs /rw
mount --move ${rootmnt} /ro
mount -t aufs -o dirs=/rw:/ro=ro aufs /aufs
mount --move /ro /aufs/ro
mount --move /rw /aufs/rw
mount --move /aufs ${rootmnt}

# Remove the old root mount from fstab
sed -i '/ \/ /d' /etc/fstab
