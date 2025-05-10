# signman
signman is a simple toolset i put together that can unpack, mount, and sign Anki Vector OTA files using custom/proprietary manifest signing keys

# what do all of these scripts do?
~/unpackota.sh - unpacks an OTA file (needs to be named latest.ota)

opened/decrypt.sh - decrypts the apq8009-robot-boot.img.gz and apq8009-robot-sysfs.img.gz in the OTA you unpacked

opened/mount.sh - mounts the apq8009-robot-sysfs.img.gz in the OTA you unpacked

opened/unmount.sh - unmounts the apq8009-robot-sysfs.img.gz in the OTA you unpacked

opened/signman.sh - unmounts the mounted image (if any), and repacks the apq8009-robot-boot.img and apq8009-robot.sysfs.img into an OTA file with a signed manifest
