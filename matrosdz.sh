#! /bin/bash

DIR="$HOME/.fonts/"
if [ -d "$DIR" ]; then
   echo "'$DIR' found "
else
   mkdir -vp $HOME/.fonts
fi

mv -f *.ttf $HOME/.fonts

mkdir matrosdz;

mv clock dayname sysinfo date LICENSE README.md ./matrosdz ;

mv matrosdz/ $HOME/.conky/
