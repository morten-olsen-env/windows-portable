CMDER_URL=https://github.com/cmderdev/cmder/releases/download/v1.3.11/cmder_mini.zip

curl -L -o $TMP_DIR/downloads/cmder.zip $CMDER_URL
unzip -d $TARGET_DIR .tmp/downloads/cmder.zip
echo "@echo off" > $TARGET_DIR/config/user-profile.cmd