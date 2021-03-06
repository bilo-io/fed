#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

blueprints_react="/usr/local/bin/.shell/blueprints/react"

echoColor 'cyan-l' "adding React container" 
echo -ne "name:"
read name
path="./src/containers/$name"
mkdir $path
echoColor 'green-l' "[+] $path"

cat $blueprints_react/redux-container.js >> $path/index.js
echoColor 'green' "[+] - index.js"

cat $blueprints_react/redux-reducer.js >> $path/reducer.js
echoColor 'green' "[+] - reducer.js"

cat $blueprints_react/redux-actions.js >> $path/actions.js
echoColor 'green' "[+] - actions.js"

cat $blueprints_react/style.scss >> $path/style.scss
echoColor 'green' "[+] - style.scss"