#!/bin/bash

docker run -i --rm -v kscript:/root/.kscript serandel/kscript "$1" "$@"
