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

function addConfig() {
   echo -n $1 >> $TARGET_DIR/config/user-profile.cmd
   echo ""
}
export -f addConfig

function addAlias() {
   echo -n "$1=$2" >> $TARGET_DIR/config/user-aliases.cmd
   echo ""
}
export -f addAlias

function installZip() {
   ZIP_LOCATION="$TMP_DIR/downloads/$SCRIPT_NAME.zip"
   echo "... downloading"
   curl -sL -o "$ZIP_LOCATION" $1
   echo "... unpacking"
   unzip -q -d "$INSTALL_DIR" "$ZIP_LOCATION" 2>/dev/null
}
export -f installZip

function installTarBz2() {
   TAR_LOCATION="$TMP_DIR/downloads/$SCRIPT_NAME.tar.bz2"
   echo "... downloading"
   curl -sL -o "$TAR_LOCATION" $1
   echo "... unpacking"
   tar -xjf "$TAR_LOCATION" -C "$INSTALL_DIR" 2>/dev/null
}
export -f installTarBz2

function installScript() {
   echo "Installing $1"
   bash "$ROOT_DIR/scripts/$1.sh"
   echo ""
}

export INSTALL_DIR="$TARGET_DIR"
installScript "cmder"

for i in "${packages[@]}"
do
   : 
   export INSTALL_DIR="$TARGET_DIR/vendor/$i"
   export BATCH_DIR="%CMDER_ROOT%\vendor\$i"
   export SCRIPT_NAME=$i
   installScript $i
done