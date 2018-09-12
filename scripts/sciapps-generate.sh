#!/bin/bash

echo "FROM docker:17.05.0-ce-git"

echo "RUN apk --update add --no-cache py-pip=9.0.0-r1 unzip bash perl curl curl-dev jq"

echo "RUN pip install docker-compose==1.12.0 awscli==1.11.76"

echo "RUN curl -L -o /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5rc1/jq-linux-x86_64-static \
                                && chmod +x /usr/bin/jq"