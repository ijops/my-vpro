#!/bin/bash

CONTAINER=vpro
 
RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER 2> /dev/null)

if [ $? -eq 1 ]; then
  echo "'$CONTAINER' does not exist."
else
   docker stop $CONTAINER
   docker rm $CONTAINER
fi
