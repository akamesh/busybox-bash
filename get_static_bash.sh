#!/usr/bin/env sh

mkdir -p ./bin
docker run -v `pwd`/bin:/store ubuntu /bin/bash -c "apt-get -y update && apt-get -y install bash-static && cp /bin/bash-static /store/"
mv ./bin/bash-static ./docker/bin/bash
