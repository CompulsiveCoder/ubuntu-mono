FROM ubuntu:15.10

RUN apt-get update && apt-get install -y curl git wget mono-complete mono-xsp4 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
