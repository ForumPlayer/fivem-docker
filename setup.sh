#!/bin/bash

##########################################################
fivembuild="3165-cdfd2ccfc03f97050741c954663b40b25ac37b4f"
##########################################################

filepath=$(realpath $0)
filepath=${filepath%/*}
mkdir -p "$filepath/server/"
cd "$filepath/server/"

wget -c "https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/$fivembuild/fx.tar.xz"

tar xf fx.tar.xz
rm fx.tar.xz

exit
