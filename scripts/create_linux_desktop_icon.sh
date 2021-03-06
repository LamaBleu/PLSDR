#!/usr/bin/env bash

cd ..

path=`pwd`

target=$(xdg-user-dir DESKTOP)/PLSDR.desktop

cat << EOF > $target
[Desktop Entry]
Comment=PLSDR software-defined radio
Encoding=UTF-8
Exec=python $path/PLSDR.py
GenericName=PLSDR
GenericName[en_US]=PLSDR
Icon=$path/icon/app_icon_32x32.png
MimeType=
Name=PLSDR
Name[en_US]=PLSDR
StartupNotify=false
Terminal=false
Type=Application
EOF

chmod +x $target
