# Check docker version
docker --version
docker version
docker info


# Check docker-compose version
docker-compose --version

# Check docker-machine version
docker-machine --version

# Check docker swarm version
docker swarm --version

# Check docker image list
docker images ls

# Pull docker image
docker pull ubuntu:latest

# Remove docker image
docker rmi ubuntu:latest

# Remove all docker image
docker rmi $(docker images -q)

# Check docker container list
docker ps -a
docker container ls -a

# docker list only running container
docker ps
docker container ls

# docker create container
docker create create --name mycontainer ubuntu:latest

# docker start container
docker container start mycontainer

# docker stop container
docker container stop mycontainer

# docker remove container
docker container rm mycontainer

# docker remove all container
docker container rm $(docker container ls -aq)

# docker container logs 
docker container logs mycontainer

# docker container logs follow / real time
docker container logs -f mycontainer

# docker container exec
docker container exec -it mycontainer bash
docker container exec -it mycontainer /bin/bash

# docker container port
docker container port mycontainer

# docker container publish port
docker container create --name mynginx --publish 8080:80 nginx:latest
docker container create --name mymongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest

# docker container stats
docker container stats

# docker container top
docker container top mycontainer

# docker container mongo with bind mount
docker container create --name mymongo --publish 27017:27017 --mount "type=bind,source=/Users/ferykurniawan/projects/source-docker/mongo
,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest


docker container create --name mymongo --publish 27017:27017 --mount "type=bind,source=/Users/ferykurniawan/projects/source-docker/mongo,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest
