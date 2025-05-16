#!/bin/sh
docker build -t vue-app:1.0 .
docker run -p 7894:80 --name vue-app-1 -d --rm vue-app:1.0
docker ps
