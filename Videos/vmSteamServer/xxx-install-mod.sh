#!/bin/bash
steamcmd +runscript /home/sprecher/arma3/xxx-install-mod.txt
cd /home/sprecher/arma3/steamapps/workshop/content/107410/3407948300
find . -depth -exec rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;
cd /home/sprecher/arma3
./xxx-softlink.sh 3407948300
./xxx-copy-keys.sh

