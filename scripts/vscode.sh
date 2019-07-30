VSCODE_URL=https://go.microsoft.com/fwlink/?Linkid=850640

installZip $VSCODE_URL
VSCODE_EXECUTABLE=$(ls -l "$INSTALL_DIR/bin" | grep -v 'cmd' | awk '{print $9}' | sed '/^[[:space:]]*$/d')
addAlias "code" "\"$BATCH_DIR/bin/$VSCODE_EXECUTABLE\" $*"
mkdir -p "$INSTALL_DIR/data" # enable VSCODE portable mode - https://code.visualstudio.com/docs/editor/portable