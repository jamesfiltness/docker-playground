# Docker playground

The setup in this repo uses Docker Compose to orchestrate running a Node app behind an Nginx reverse proxy.

(There are npm scripts defined for most of commands below)

### Run the app on Docker in development mode
Run `npm run docker:start:dev`. This starts Docker up using `docker-compose.dev.yml`. The node app (`index.js`)
is mounted as a volume inside the container and is reloaded by nodemon when a file is changed.

### Run the app on Docker in production mode
Todo...

## Useful commands:

### SSH on to docker container:
1. `docker ps` - copy the `CONTAINER ID`
2. `docker exec -it CONTAINERIDHERE /bin/bash`

### Remove all containers and images:
`docker rm $(docker ps -a -q) && docker rmi $(docker images -q)`
