#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

name=$1
[[ -z "${name// }" ]] && name="bilo"
clear

UTIL_NAME="
installing bilo-cli

 => setup: '$name' ...
"
setColor cyan
echo "$UTIL_NAME"

# copy clie
echoColor 'cyan-l' "[.] creating command line utility: '$name'"
cp ./.shell/bilo-cli.sh ./.shell/$name
chmod +x ./.shell/$name
mv ./.shell/$name /usr/local/bin/

echoColor 'orange' "[!] installing '$name' CLI requires authorisation:"

echoColor 'red-l' "[-] del /usr/local/bin/.shell (old)"
sudo rm -rf /usr/local/bin/.shell

echoColor 'green-l' "[+] add /usr/local/bin/.shell (update)"
sudo mkdir /usr/local/bin/.shell

echoColor 'blue-l' "[.] copy scripts to /usr/local/bin/.shell"
sudo cp -r ./.shell/blueprints /usr/local/bin/.shell/
sudo cp -r ./.shell/sh /usr/local/bin/.shell/
#/Users/bilolwabona/Desktop/
#/usr/local/bin/.shell/

cwd=$(pwd)

echoColor 'cyan-l' "
 => '$name' CLI installed successfully
 => from your terminal, run the command:
"
echoColor 'white' "
$USER$ $name
"