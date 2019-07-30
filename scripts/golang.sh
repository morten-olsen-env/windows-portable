GOLANG_URL=https://dl.google.com/go/go1.12.7.windows-amd64.zip

curl -L -o $TMP_DIR/downloads/golang.zip $GOLANG_URL
unzip -d $TARGET_DIR/vendor/golang .tmp/downloads/golang.zip
echo "set \"PATH=%CMDER_ROOT%/vendor/golang;%PATH%\"" >> $TARGET_DIR/config/user-profile.cmd