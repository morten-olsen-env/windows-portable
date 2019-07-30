CMDER_URL=https://github.com/cmderdev/cmder/releases/download/v1.3.11/cmder_mini.zip

installZip $CMDER_URL
echo "@echo off" > $TARGET_DIR/config/user-profile.cmd