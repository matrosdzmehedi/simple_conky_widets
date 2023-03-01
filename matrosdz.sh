#! /bin/bash

DIR="$HOME/.fonts/"

if [ -d "$DIR" ]; then
   echo "'$DIR' found "
else
   mkdir -vp $HOME/.fonts
fi

mv -f *.ttf $HOME/.fonts

mkdir matrosdz;

# setting wifi name dynamically 
wifi=$(ip r | grep default | awk '{print $5}')
sed -i "s/wlp2s0/$wifi/"  sysinfo

mv clock dayname sysinfo date LICENSE README.md matrosdz/ ;


DIR_CONKY="$HOME/.conky/"

if [ -d "$DIR_CONKY" ]; then
   echo "'$DIR_CONKY' found "
else
   mkdir -vp $HOME/.conky/ 
fi

mv matrosdz/ $HOME/.conky/ ;
