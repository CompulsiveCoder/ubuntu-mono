FROM ubuntu:15.10

RUN apt-get update && apt-get install -y curl git wget mono-complete mono-xsp4

# The following clears the apt-get cache making the image smaller, but will increase the duration of a build process if it needs to call apt-get update, which is why it's currently disabled
# && \
#    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
