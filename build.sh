#!/bin/bash
echo '-------------------------------------exec----------------------------------------'

SHELL_FOLDER=$(dirname "$0")
cd "$SHELL_FOLDER"
dpkg-scanpackages ./deb/ > Packages
apt-ftparchive release . > Release 

echo '-------------------------------------done----------------------------------------'
