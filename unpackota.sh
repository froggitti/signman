#!/usr/bin/env bash

if [ "$1" == "" ]; then
  echo no ota provided.
else
  echo opening ota
  tar -xf $1
  if [ -f "opened/apq8009-robot-sysfs.img" ]; then
    sudo rm opened/apq8009-robot-sysfs.img
  fi
  if [ -f "opened/apq8009-robot-sysfs.img.gz" ]; then
    sudo rm opened/apq8009-robot-sysfs.img.gz
  fi
  if [ -f "opened/apq8009-robot-boot.img" ]; then
    sudo rm opened/apq8009-robot-boot.img
  fi
  if [ -f "opened/apq8009-robot-boot.img.gz" ]; then
    sudo rm opened/apq8009-robot-boot.img.gz
  fi
  if [ -f "opened/manifest.ini" ]; then
    sudo rm opened/manifest.ini
  fi
  if [ -f "opened/manifest.sha256" ]; then
    sudo rm opened/manifest.sha256
  fi
  sudo mv manifest.* opened
  sudo mv apq8009-* opened
  echo done
fi
