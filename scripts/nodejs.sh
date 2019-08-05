NODEJS_URL=https://nodejs.org/dist/v12.7.0/node-v12.7.0-win-x64.zip

installZip $NODEJS_URL
addPath "\\$(ls $INSTALL_DIR)"
