#!/bin/bash

cDir=`pwd`

tmpDir=`mktemp -d`;

cd $tmpDir

git clone https://github.com/mtoyoda/sl.git

#ls sl 
cd sl
make

cp sl $cDir

echo "##################################################################"
echo "Done, "

if [ "$1" = "-a" ]; then
    echo "-a specified, adding to bashrc"
    echo "Remember to source ~/.bashrc or restart your terminal"

    echo "alias sl=$cDir/sl" >> ~/.bashrc
else
    echo "Add 'alias sl=$cDir/sl' to your bashrc to make this avalible everywhere"
    echo "Then execute 'source ~/.bashrc' or restart your terminal"
fi
