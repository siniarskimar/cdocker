FROM ubuntu:latest

RUN apt-get update && \
 apt-get install -y make build-essential gcc

RUN mkdir -p /home/container/hello_docker

WORKDIR /home/container/hello_docker

COPY  . ./src

RUN cd /home/container/hello_docker/src && make

ENTRYPOINT ./src/hello_docker
