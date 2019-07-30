NODEJS_URL=https://nodejs.org/dist/v12.7.0/node-v12.7.0-win-x64.zip

curl -L -o $TMP_DIR/downloads/nodejs.zip $NODEJS_URL
unzip -d $TARGET_DIR/vendor/nodejs .tmp/downloads/nodejs.zip
echo "set \"PATH=%CMDER_ROOT%/vendor/nodejs/$(ls usb/vendor/nodejs)/bin;%PATH%\"" >> $TARGET_DIR/config/user-profile.cmd