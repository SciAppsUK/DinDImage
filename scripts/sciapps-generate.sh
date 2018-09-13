#!/bin/bash
# Docker 18.06 users APK v3.7
# (https://github.com/docker-library/docker/blob/595ad0c92090937dcb7c200900fb97e36d36c412/18.06/Dockerfile)
echo "FROM docker:18.06.1-ce-git"

echo "RUN apk --update add --no-cache py2-pip unzip bash perl curl curl-dev jq"

echo "RUN pip install docker-compose==1.22.0 awscli==1.16.12"

echo "RUN curl -L -o /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5rc1/jq-linux-x86_64-static \
                                && chmod +x /usr/bin/jq"