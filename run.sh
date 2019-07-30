#!/bin/bash
source "packages.sh"
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ROOT=$PWD
export TARGET_DIR=$PWD/usb
export TMP_DIR=$ROOT/.tmp

rm -rf $TMP_DIR
rm -rf "$TARGET_DIR"

mkdir -p $TMP_DIR/downloads
mkdir -p "$TARGET_DIR"

bash "$ROOT_DIR/scripts/cmder.sh"

for i in "${packages[@]}"
do
   : 
   bash "$ROOT_DIR/scripts/$i.sh"
done