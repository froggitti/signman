# signman
signman is a simple toolset i put together that can unpack, mount, and sign Anki Vector OTA files using custom/proprietary manifest signing keys

in the root of the repo, you will see `unpackota.sh`. all you need to do is put an ota in the same directory as that shell file named `latest.ota` and run the shell script. it will unpack the OTA in a directory called `opened`. in that directory, you will find many more scripts and utilities
