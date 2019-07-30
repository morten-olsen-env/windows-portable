VSCODE_URL=https://go.microsoft.com/fwlink/?Linkid=850640

curl -L -o $TMP_DIR/downloads/vscode.zip $VSCODE_URL
unzip -d $TARGET_DIR/vendor/vscode .tmp/downloads/vscode.zip
VSCODE_EXECUTABLE=$(ls -l usb/vendor/vscode/bin | grep -v 'cmd' | awk '{print $9}' | sed '/^[[:space:]]*$/d')
echo "code=\"%CMDER_ROOT%/vendor/vscode/bin/$VSCODE_EXECUTABLE\" $*" >> $TARGET_DIR/config/user-aliases.cmd
mkdir -p $TARGET_DIR/vendor/vscode/data # enable VSCODE portable mode - https://code.visualstudio.com/docs/editor/portable