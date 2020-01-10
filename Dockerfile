# Start with an appropriate base image
FROM golang:alpine

# Maintainer info
MAINTAINER "Dan Tracey <dtracey@hotmail.co.uk>"

# Set environment variable(s)
ENV PACKER_DEV=1

# Install packages and tools
RUN apk add --update git bash openssl
RUN go get github.com/mitchellh/gox
RUN go get github.com/hashicorp/packer

# Set default working directory
WORKDIR $GOPATH/src/github.com/hashicorp/packer

# Run build script(s)
RUN /bin/bash scripts/build.sh

# Set default working directory
WORKDIR $GOPATH

# Set default executable
ENTRYPOINT ["bin/packer"]