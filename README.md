# Create environment

Choose which packages to install by adjusting `./packages.sh` and then run `./run.sh` which will generate a `./usb` folder containing a `cmder` based portable environment

# Adding packages
Create a script inside `./scripts` with the name of your package followed by `.sh`, for instance `my-package.sh` then add `my-package` to `./packages.sh`.

**Variables for scripts:**
* `$INSTALL_DIR`: Install location for package
* `$TMP_DIR`: Location for installation temp data
* `$BATCH_DIR`: Install directory for batch scripts (used for `addConfig` and `addAlias`)

**Helper functions for scripts**
* `addConfig <CONFIG_STRING>`: Add the string add the end of `cmder/config/user-profile.cmd`
* `addAlias <NAME> <TARGET>`: Adds an alias `<NAME>` into `cmder/config/user-aliases.cmd`
* `addAPath [POST_PATH]`: Adds `$BATCH_DIR` with `POST_PATH` postpended into `PATH`
* `addVariable <NAME> <VALUE>`: Adds a `set` command to `cmder/config/user-profile.cmd`
* `installZip <URL>`: Download and extract a .zip file into `$INSTALL_DIR`
* `installTarBz2 <URL>`: Download and extract a .tar.bz2 file into `$INSTALL_DIR`

```bash
DOTNET_URL=https://download.visualstudio.microsoft.com/download/pr/4de548ef-9b51-4b1f-ae3a-60ebd6a6f2b5/01fce24fe286e7475fdbecc60f1daee5/dotnet-sdk-2.2.401-win-x64.zip

installZip $DOTNET_URL
addConfig "set \"PATH=$BATCH_DIR;%PATH%\""
```