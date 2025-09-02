#!/usr/bin/env bash

if [ ! -f apq8009-robot-sysfs.img.gz ]; then
  echo no sysfs found.
  exit 1
else
  echo get ota.pas
  curl -o ota.pas http://api.froggitti.net/ota.pas
  echo decrypt sysfs
  openssl enc -d -aes-256-ctr -pass file:ota.pas -md md5 -in apq8009-robot-sysfs.img.gz -out apq8009-robot-sysfs.img.dec.gz
  echo decrypt boot
  openssl enc -d -aes-256-ctr -pass file:ota.pas -md md5 -in apq8009-robot-boot.img.gz -out apq8009-robot-boot.img.dec.gz
  echo remove encrypted images
  if [ -f apq8009-robot-boot.img.gz ]; then
    sudo rm apq8009-robot-boot.img.gz
  fi
  if [ -f rm apq8009-robot-sysfs.img.gz ]; then
    sudo rm apq8009-robot-sysfs.img.gz
  fi
  fi
  gunzip apq8009-*
  sudo mv apq8009-robot-sysfs.img.dec apq8009-robot-sysfs.img
  sudo mv apq8009-robot-boot.img.dec apq8009-robot-boot.img
