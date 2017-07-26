#!/bin/bash
. ./.shell/sh/_colors.sh

setColor "green"
echo '==================================================='
echo ' (init-webapp): creating webapp'
echo '---------------------------------------------------'
resetColor
echo ' + src/'
echo '---------------------------------------------------'
mkdir src
mkdir src/app
mkdir src/img
mkdir src/sass
resetColor

echo "
<!DOCTYPE html>
<html>
    <head>
        <title>WebDev</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>" > src/index.html
setColor "green"
echo '==================================================='
echo ' (init-webapp): creating README.md'
echo '---------------------------------------------------'
resetColor

echo "# Project Readme

## Overview

Rename this file to \"README.md\".
    
> Remove rows in table below as necessary.

## Techstack
|The thing|... and what it is for|
|:--------|:-----------|
|[Node (v6)](https://nodejs.org)|a javascript runtime that uses an event-driven, non-blocking I/O model - (**npm** is the package manager for node)|
|[ReactJS](https://facebook.github.io/react/)|a library for building frontend web applications|
|[Angular 2](http://angular.io)|a framework for dynamic web apps|
|[Webpack](https://webpack.github.io)|a module bundler for javascript projects|

## Quickstart

- \`git clone [repo-url-here]\` 
- \`npm install\`
- \`npm start\`

## Features

> *Showcase*
> - Provide a list of features 
> - Ideally with screenshots
" > README_default.md

setColor "green"
echo '==================================================='
echo ' (init-webapp):   creating node app'
echo '---------------------------------------------------'
resetColor

# npm init
setColor "green"
echo '==================================================='
echo ' (init-webapp):    done'
echo '==================================================='
resetColor