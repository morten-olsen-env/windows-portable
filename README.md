# Create environment

Choose which packages to install by adjusting `./packages.sh` and then run `./run.sh` which will generate a `./usb` folder containing a `cmder` based portable environment

# Adding packages

Simple create a script inside `./scripts` names `{PACKAGENAME}.sh`.

** Variables **
* `$INSTALL_DIR`: Install location for package
* `$TMP_DIR`: Location for installation temp data
* `$TARGET_DIR`: Environment root
* `$BATCH_DIR`: Install directory for batch scripts