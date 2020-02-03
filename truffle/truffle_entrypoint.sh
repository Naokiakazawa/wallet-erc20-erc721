#!/bin/bash

DIR="/usr/app/src/contracts"
if [ ! -d $DIR ];then
    cd /usr/app/src
    echo -e "\n===> creating a bare Truffle project\n"
    truffle init
fi
/bin/bash