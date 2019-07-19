FROM node:10.14.1
LABEL maintener 'Edgar'

RUN apt-get update && apt-get install -y \
    curl \
    git \
    gnupg \ 
    apt-transport-https \
    wget \
    ncftp \
    npm install -G bower && \
    apt-get clean && apt-get --yes --quiet autoremove --purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
