#!/bin/bash
# Run by user from /home/vagrant to bring up TRADR micropython session docker container
docker pull registry:5000/micropython
docker run --quiet \
--network host \
--log-driver=json-file \
--log-opt max-size=10m \
--log-opt max-file=10 \
-it registry:5000/micropython

