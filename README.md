# Docker playground

The setup in this repo uses Docker Compose to orchestrate running a Node app behind an Nginx reverse proxy.

(There are npm scripts defined for most of commands below)

### Run container from Dockerfile directly

Build an image:
`docker build -f Dockerfile -t nodeapp .`

Run an image (4000 is the host port, 3000 is the container port):
`docker run -p 4000:3000 nodeapp`

### Run the container via docker-compose
`docker-compose up`

Run container and force a Build
`docker-compose up --build`

## SSH on to docker container:
1. `docker ps` - copy the `CONTAINER ID`
2. `docker exec -it CONTAINERIDHERE /bin/bash`

### Remove all containers and images:
`docker rm $(docker ps -a -q) && docker rmi $(docker images -q)`
