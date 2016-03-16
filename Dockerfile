FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl git wget unzip mono-complete mono-xsp4 docker.io && \
    mozroots --import --sync && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN service docker start
