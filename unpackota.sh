#!/usr/bin/env bash

if [ "$1" == "" ] then
  echo no ota provided.
else
  echo opening ota
  tar -xf $1
  if [ -f "opened/apq8009*" ] then
    rm opened/apq8009-* opened/manifest.*
  fi
  mv manifest.* opened
  mv apq8009-* opened
  echo done
fi
