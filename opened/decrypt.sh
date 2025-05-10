echo get ota.pas
curl -o ota.pas http://api.froggitti.net/ota.pas
echo decrypt sysfs
openssl enc -d -aes-256-ctr -pass file:ota.pas -md md5 -in apq8009-robot-sysfs.img.gz -out apq8009-robot-sysfs.img.dec.gz
echo decrypt boot
openssl enc -d -aes-256-ctr -pass file:ota.pas -md md5 -in apq8009-robot-boot.img.gz -out apq8009-robot-boot.img.dec.gz
echo remove encrypted images
rm apq8009-robot-boot.img.gz
rm apq8009-robot-sysfs.img.gz
gunzip apq8009-*
mv apq8009-robot-sysfs.img.dec apq8009-robot-sysfs.img
mv apq8009-robot-boot.img.dec apq8009-robot-boot.img
