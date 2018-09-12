#!/bin/bash

echo "FROM docker:17.05.0-ce-git"

echo "RUN apk --update add --no-cache py-pip=9.0.0-r1 unzip bash perl"

echo "RUN pip install docker-compose==1.12.0 awscli==1.11.76"

# install bats for testing
echo "RUN git clone https://github.com/sstephenson/bats.git \
  && cd bats \
  && ./install.sh /usr/local \
  && cd .. \
  && rm -rf bats"

# install dependencies for tap-to-junit
echo "RUN perl -MCPAN -e 'install TAP::Parser'"
echo "RUN perl -MCPAN -e 'install XML::Generator'"