# alpine-nodemon
Tiny [node.js](https://nodejs.org/en/) docker image
with [nodemon](https://github.com/remy/nodemon)
based on [mhart/alpine-node:6](https://github.com/mhart/alpine-node)
for development

## Install
    docker pull tumbumer/alpine-nodemon

## Usage

#### Put [nodemon.json](https://github.com/remy/nodemon/blob/master/doc/cli/config.txt) to your node app dir
#### Create docker container
    docker create --name nodemon -v /path/to/your/node/app:/app tumbumer/alpine-nodemon

#### Start container
    docker start nodemon
