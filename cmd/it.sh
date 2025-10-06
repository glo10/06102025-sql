#!/bin/bash
if [ "$1" ]; then
  winpty docker exec -it "$1" sh
else
  echo "Required id or name of container, for instance ./it 1d55e744d2"
fi
