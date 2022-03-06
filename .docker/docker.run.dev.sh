#!/bin/sh

docker run -p 3000:3000 -it --rm -v $(PWD):/app -v /app/node_modules --name vol-app docker-volumes-practice:latest sh