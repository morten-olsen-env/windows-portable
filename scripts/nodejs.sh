NODEJS_URL=https://nodejs.org/dist/v12.7.0/node-v12.7.0-win-x64.zip

installZip $NODEJS_URL
addConfig "set \"PATH=$BATCH_DIR\$(ls $INSTALL_DIR)\bin;%PATH%\""