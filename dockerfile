FROM alpine:3.14

# Dependencies 
RUN apk add py3-pip && \
    apk add terraform && \
    apk add ansible && \
    apk add git && \
    apk add jq   

# Aws Cli
RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*
 
RUN aws --version 

# set work directory (for file sharing between host and container)
WORKDIR /root/dev-env