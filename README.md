# Simple WM Initializer Script

The **Simple WM Initializer Script** is designed to be placed in the `"$HOME/.profile"` of your users and helps in initializing a window manager (WM) by reading configuration files. This document explains the usage, features, purpose, and licensing of the script.

## Setup:

1. Open a terminal and type this commands:
```
  $ git clone https://github.com/arthur-manske/simple-wm-init.git
  $ cd simple-wm-init/
  $ chmod +x ./usr/bin/wm-initer.sh
  $ vi ~/.profile
```
2. Add the command wm-initer.sh in the end of your .profile file.
3. Create a configuration file for the initer(in XDG_CONFIG_HOME/wm.initialize or /etc/wm.initialize), it just can contains the WM executable name, like sway. 
4. Then you will need to login as root to proceed:
```
  $ su -
  $ cp -R usr /usr
```
5. Now the installation is finished. 

## Features:

- Simple WM Initialization: The script reads a one line file to determine which WM to initialize.
- Flexibility: It supports both user-specific and global configuration files.
- Error Handling: Provides error messages if the configuration file or WM initialization fails.
- Less is more: The simplicity of the command make it more performatic and safe.

## License

This script is provided under the **Unlicense** license, allowing you to use, modify, and distribute the script without any restrictions. See the [LICENSE](LICENSE) file for more details.

## Script Information

- **Script Name**: wm-initer.sh
- **Author**: [Arthur Manske 'aka' ASM]
- **Purpose**: Initialize a chosen window manager based on configuration files.
- **Compatibility**: Designed for Alpine Linux and Sway.
- **License**: Unlicense (See [LICENSE](LICENSE))

*******************************************************************************************
For further assistance or improvements, feel free to reach out to [arthur-manske@proton.me].
*******************************************************************************************
