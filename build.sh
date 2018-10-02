#!/usr/bin/env bash
docker run --privileged -it -v $PWD:/build --rm ubuntu:bionic /build/run.sh
