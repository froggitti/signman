#!/usr/bin/env bash

if [ "$1" == "" ]; then
  echo no ota provided.
else
  echo opening ota
  tar -xf $1
  if [ -e "opened/apq8009*" ]; then
    rm opened/apq8009-*
  fi
  if [ -e "opened/manifest.*" ]; then
    rm opened/manifest.*
  fi
  sudo mv manifest.* opened
  sudo mv apq8009-* opened
  echo done
fi
