#!/bin/bash
if [ "$1" == 'mac' ] 
then
  mv ../ubuntu/.Xmodmap ~/.Xmodmap
  gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Control>Tab']"
  echo "switched to mac"
fi
if [ "$1" == 'pc' ]
then
  rm ~/.Xmodmap
  gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
  echo "swichted to pc"
fi
