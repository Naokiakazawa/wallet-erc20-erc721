#!/bin/bash

DIR="/usr/app/src/dapp"
if [ ! -d $DIR ];then
    cd /usr/app/src
    echo -e "\n===> creating a react.js project\n"
    npx create-react-app dapp
    cd /usr/app/src/dapp
    echo -e "\n===> installing material-ui & web3.js\n"
    npm install web3@1.2.4 websocket@1.0.30 @material-ui/core @material-ui/icons
fi
npm start