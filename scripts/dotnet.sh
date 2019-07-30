DOTNET_URL=https://download.visualstudio.microsoft.com/download/pr/4de548ef-9b51-4b1f-ae3a-60ebd6a6f2b5/01fce24fe286e7475fdbecc60f1daee5/dotnet-sdk-2.2.401-win-x64.zip

curl -L -o $TMP_DIR/downloads/dotnet.zip $DOTNET_URL
unzip -d $TARGET_DIR/vendor/dotnet .tmp/downloads/dotnet.zip
echo "set \"PATH=%CMDER_ROOT%/vendor/dotnet;%PATH%\"" >> $TARGET_DIR/config/user-profile.cmd