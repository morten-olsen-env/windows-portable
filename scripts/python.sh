PYTHON_URL=https://www.python.org/ftp/python/3.7.4/python-3.7.4-embed-amd64.zip

installZip $PYTHON_URL
addPath
addPath "\Lib\site-packages"
addVariable "PYTHONPATH" "$BATCH_DIR"