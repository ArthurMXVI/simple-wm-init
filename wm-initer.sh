#!/bin/sh

# Authored by Arthur Manske
#*** Thinked to Work in Alpine with Sway ***
#*** This initializer depends on dbus, on a working shell and on a working WM ***
# LICENSE: Unlicense 

WM_BASENAME="wm.initialize"
WM_PATH=""

xdg_config_path() {
  WM_PATH=$(cat "$XDG_HOME_CONFIG/$WM_BASENAME")
}

etc_config_path() {
  WM_PATH=$("/etc/$WM_BASENAME")
}

getconf() {
  xdg_config_path
  
  if [ -f "$WM_PATH" ]; then 
    cat "$WM_PATH"
  else
    
    etc_config_path
    if [-f "$WM_PATH" ]; then
      cat "$WM_PATH"
    fi
    
  fi
}

WM=$(getconf)

exec_wm() {
  if dbus-run-session -- "$WM"; then
    printf "Initialized $WM with success!\n"
  else 
    printf "Error: Unable to initialize $WM!\n"
  fi
}

if [ -n "$WM" ]; then
  exec_wm
else 
  printf "Error: There's no configuration file for the WM Initializer in the system!\n"
  printf "(You should create one global one in /etc/$WM_BASENAME, with the name of the WM that you want to exec)\n"
fi
