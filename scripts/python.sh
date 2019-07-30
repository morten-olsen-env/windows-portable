PYTHON_URL=https://www.python.org/ftp/python/3.7.4/python-3.7.4-embed-amd64.zip

installZip $PYTHON_URL
addConfig "set \"PATH=$BATCH_DIR;%PATH%\""
addConfig "set \"PATH=$BATCH_DIR\Lib\site-packages;%PATH%\""
addConfig "set \"PYTHONPATH=$BATCH_DIR;%PATH%\";\"PATH=$BATCH_DIR\Lib\site-packages;%PATH%\""