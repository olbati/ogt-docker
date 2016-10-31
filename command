Docker Command

//search for an images
docker search ubuntu

//run an image
docker run -i -t ubuntu ./bin/bash

//list all the local images
docker images

//list all the running images
docker ps -a

//commit a new image
docker commit -a auther [cont_id] imagename:tag

//run an image with shared folder and port redirection
docker run -it -v /Users/amoncer/Documents/workspace/docker-demo:/olbati -p 9000:3000 olbati:0.2

//run an images and a node js application on it
docker run -d -v /Users/amoncer/Documents/workspace/docker-demo:/olbati -p 9000:3000 -w /olbati olbati:0.2 nodejs index.js

//attach to a running container to get output
docker attach id

//tag an image
docker tag 7d9495d03763 maryatdocker/docker-whale:latest

//connect to docker hub
docker login --username=yourhubusername --email=youremail@company.com

//push an image to docker hub
docker push maryatdocker/docker-whale
