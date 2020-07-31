#!/usr/bin/env bash
set -e
_DIR=$(cd "$(dirname "$0")"; pwd)
cd $_DIR

#export DOCKER_CLI_EXPERIMENTAL=enabled
#docker push gpuai/dev
# cp Dockerfile

for os in $(ls docker/)
do
dockerfile=docker/$os/Dockerfile
cat Dockerfile >> $dockerfile
docker build -t gpuai/$os -f $dockerfile .
docker push gpuai/$os
git checkout $dockerfile
done


