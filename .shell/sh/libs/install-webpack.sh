#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

echoColor 'cyan-l' ' => init-webpack ...'
# npm install \
#     webpack \
#     webpack-dev-server \
#     css-loader \
#     style-loader \
#     sass-loader \
#     file-loader \
#     html-webpack-plugin \
#     node-sass \
# --save-dev 

cat ./.shell/blueprints/webpack.config.js > webpack.config.js
echoColor 'green' '[+] webpack.config.js'
echoColor 'cyan-l' '
 => init-webpack: done
 '

echoColor 'orange' ' 
NOTE: 

add the following to the "scripts" node in package.json: 

scripts: {
    
    "start": "webpack-dev-server --inline --progress --port 8080",
    "build": "webpack -p",

    // ...
}
'


# sed -i 's/"scripts" :\n"build": "webpack -\p",' package.json
sed -i '.txt' 's/Dude/a Elduderino/g' test.txt
# sed -i '.txt' 's/Dude/\a Elduderino/g' test.txt

# sed -i '/"scripts" : {/n; "start": "webpack-dev-server --inline --progress --port 8080",' packagejson