#!/bin/bash
. ./.shell/sh/_colors.sh
UTIL_NAME='
                                                                    
    _/        _/  _/                                  _/  _/
   _/_/_/_/      _/   _/_/_/                 _/_/_/  _/     
  _/    _/  _/  _/  _/    _/    _/_/_/    _/        _/  _/  
 _/_/_/_/  _/  _/   _/_/_/                 _/_/_/  _/  _/                                                               
'
WELCOME_MESSAGE='
Use this CLI to rapidly setup frontend and backend projects!
------------------------------------------------------------'
HELP_MENU='
    possible console commands:

        bilo)           shows this help menu
        
        -build)          builds src folder using webpack
        -clean)          removes folders: node_modules, artifact & dist
        -deploy)         deploys production package locally

        app)       initializes webapp with NodeJS & SASS
        express)   adds express to webapp
        react)     adds react to webapp
        webpack)   adds Webpack to webapp

'
Docs() {
    setColor cyan
    echo "$UTIL_NAME"

    setColor orange
    echo "$WELCOME_MESSAGE"

    setColor white
    echo "$HELP_MENU"
}
Docs

resetColor


function InitApp() {
    echo "initialising app"
    bash ./.shell/sh/init-app.sh
}
InitExpress() {
    echo "initialising express"
    bash ./.shell/sh/init-express.sh
}
InitReact() {
    echo "initialising react"
    bash ./.shell/sh/init-react.sh        
}
InitWebpack() {
    echo "initialising webpack"
    bash ./.shell/sh/init-webpack.sh
}
Menu() {
        arg=$1
        echo "$arg"
        case "$arg" in
                -h|-help) clear; echo "$usage" ;;
                -v|-version) clear; echo $atlasVersion;;
                h|help) Docs;;
                
                a|app) InitApp;;
                b|build) bash ./.shell/sh/build.sh;;
                c|clean) bash ./.shell/sh/clean.sh;;
                d|deploy) bash ./.shell/sh/deploy.sh;;

                express) InitExpress;;
                react) InitReact;;
                webpack) InitWebpack;;

                --) shift;;  # no more options
                *) exit 0;; # not option, its some argument
        esac
        shift
}
read userCommand
Menu $userCommand
# while [ $# -gt 0 ]
# do
# done
