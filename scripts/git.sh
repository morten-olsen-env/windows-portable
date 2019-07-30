GIT_URL=https://github.com/git-for-windows/git/releases/download/v2.22.0.windows.1/Git-2.22.0-64-bit.tar.bz2

installTarBz2 $GIT_URL
addConfig "set \"PATH=$BATCH_DIR/mingw64\bin;%PATH%\""