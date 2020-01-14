# Simple Rails

### Intro to docker

`docker run hello-world` will print hello world in the screen.


### Run shell commands inside a container
`docker run -it  ruby:2.6.3-alpine  sh`

### Build a docker image

`docker build .`

### Build with a tag

` docker build -t simplerails:1 .`

# docker compose basics

### How to run
- `docker-compose up`


# Remove Dangling Images

 `docker images -qf dangling=true | xargs docker rmi`


