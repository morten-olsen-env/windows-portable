PYTHON_URL=https://www.python.org/ftp/python/3.7.4/python-3.7.4-embed-amd64.zip

curl -L -o $TMP_DIR/downloads/python.zip $PYTHON_URL
unzip -d $TARGET_DIR/vendor/python .tmp/downloads/python.zip
echo "set \"PATH=%CMDER_ROOT%/vendor/python;%PATH%\"" >> $TARGET_DIR/config/user-profile.cmd
echo "set \"PATH=%CMDER_ROOT%/vendor/python\Lib\site-packages;%PATH%\"" >> $TARGET_DIR/config/user-profile.cmd
echo "set \"PYTHONPATH=%CMDER_ROOT%/vendor/python;%PATH%\";\"PATH=%CMDER_ROOT%/vendor/python\Lib\site-packages;%PATH%\"" >> $TARGET_DIR/config/user-profile.cmd