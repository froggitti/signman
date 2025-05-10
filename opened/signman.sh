echo You can edit your manifest signing key by simply swapping out the .key file on line 14 for a different one. Starting in 5 seconds...
sleep 5
curl -o ota_prod.key http://api.froggitti.net/ota_prod.key
curl -o ota_p2.key http://api.froggitti.net/ota_p2.key
echo gzip boot
gzip -k apq8009-robot-boot.img
echo gzip sysfs
gzip -k apq8009-robot-sysfs.img
echo encrypt sysfs
openssl enc -e -aes-256-ctr -pass file:ota.pas -md md5 -in apq8009-robot-sysfs.img.gz -out apq8009-robot-sysfs.img.gz
echo encrypt boot
openssl enc -e -aes-256-ctr -pass file:ota.pas -md md5 -in apq8009-robot-boot.img.gz -out apq8009-robot-boot.img.gz
echo sign manifest
openssl dgst -sha256 -sign ota_p2.key -out manifest.sha256 manifest.ini
echo tar it all up
tar -cf signed.tar manifest.ini manifest.sha256 apq8009-robot-boot.img.gz apq8009-robot-sysfs.img.gz
echo make tar ota
echo clean up the mess
rm apq8009-*
rm manifest.*
mv signed.tar signed.ota
echo done!!
