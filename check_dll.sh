#!/usr/bin/env bash
MISSING=$(ldd dist/horizon/bin/horizon-eda.exe dist/horizon/bin/horizon-imp.exe | grep -vi windows | grep -vi dist/horizon | grep -v "???")
if [ -z "$MISSING" ]
then
  echo "No missing DLLs"
else
  echo "Missing DLLs"
  echo "$MISSING"
  exit 1
fi
