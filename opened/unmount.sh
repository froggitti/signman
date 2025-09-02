#!/usr/bin/env bash

if [ -d mounted ]; then
  if [ -d mounted/anki ]; then
    sudo umount mounted/
  else
    echo a sysfs image is not mounted.
  exit 1
  fi
  sudo rm -rf mounted/
  echo unmounted successfully
fi
