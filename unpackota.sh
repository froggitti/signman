mv latest.ota latest.tar
echo opening ota
mkdir opened
tar -xf latest.tar
rm opened/apq8009-* opened/manifest.*
mv manifest.* opened
mv apq8009-* opened
echo done
