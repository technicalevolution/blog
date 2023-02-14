#!/bin/bash

SITE=$1
HOST=$2
VHOST=$3

pushd $SITE
rsync -r . $HOST:$VHOST

popd

