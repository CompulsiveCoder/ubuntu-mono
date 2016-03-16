FROM ubuntu:vivid

# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

RUN apt-get update && apt-get install -y curl git wget unzip mono-complete mono-xsp4 && \
    mozroots --import --sync && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]


