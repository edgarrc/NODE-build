FROM ubuntu:18.04
LABEL maintener 'Edgar'

RUN apt-get update && apt-get install -y \
    curl \
    git \
    gnupg \ 
    apt-transport-https \
    wget \
    ncftp \
    nodejs && \
    npm install -G bower && \
    apt-get clean && apt-get --yes --quiet autoremove --purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
