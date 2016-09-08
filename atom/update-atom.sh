#!/bin/bash
DLPATH="https://atom.io/download/deb"
DLDEST="$HOME/Downloads/atom-amd64.deb"
INSTALL_PATH="/opt"

if ! [ -z "$1" ] && [ $1=="beta" ];  then
  echo "Updating beta"
  DLPATH="$DLPATH?channel=beta"
  DLDEST="$HOME/Downloads/atom-amd64-beta.deb"
else
  echo "Updating stable"
fi

rm -f $DLDEST
wget -O $DLDEST $DLPATH
(cd $INSTALL_PATH && sudo dpkg -i $DLDEST)
