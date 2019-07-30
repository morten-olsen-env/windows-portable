GOLANG_URL=https://dl.google.com/go/go1.12.7.windows-amd64.zip

installZip $GOLANG_URL
addConfig "set \"PATH=$BATCH_DIR;%PATH%\""