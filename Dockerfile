FROM ubuntu:15.10

RUN apt-get update && apt-get install -y mono-runtime mono-xsp4 curl git wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
