#!/usr/bin/env bash

if [ ! -d mounted ]; then
  mkdir mounted
fi

if [ -f apq8009-robot-sysfs.img ]; then
  sudo mount apq8009-robot-sysfs.img mounted/
else
  echo sysfs not found.
fi
