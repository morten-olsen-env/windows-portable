GIT_URL=https://github.com/git-for-windows/git/releases/download/v2.22.0.windows.1/Git-2.22.0-64-bit.tar.bz2

curl -L -o $TMP_DIR/downloads/git.tar.bz2 $GIT_URL
mkdir -p $TARGET_DIR/vendor/git
tar -xjf $TMP_DIR/downloads/git.tar.bz2 -C $TARGET_DIR/vendor/git
echo "set \"PATH=%CMDER_ROOT%/vendor/git/mingw64\bin;%PATH%\"" >> $TARGET_DIR/config/user-profile.cmd