#!/bin/bash
# $1 id or name of container
if  [ "$1" ]; then
  docker container stop "$1"
else
  docker compose -f ./compose.dev.yaml stop
fi