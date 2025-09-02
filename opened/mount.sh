#!/usr/bin/env bash

if [ ! -d mounted ]; then
  mkdir mounted
fi

if [ -f apq8009-robot-sysfs.img ]; then
  sudo mount apq8009-robot-sysfs.img mounted/
  if [ ! -d mounted/anki ]; then
    echo this is not a vector ota sysfs file.
    sudo umount mounted
    rm -rf mounted
    exit 1
  fi
else
  echo sysfs not found.
fi
