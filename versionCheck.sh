#!/bin/bash

# License: (MIT), Copyright (C) 2014 versionCheck Author Phil Chen

function versionCheck() {

  MIN_VER_NEEDED=($(echo $1 | tr '.' ' '))
  VERSION=($(echo $2 | tr '.' ' '))

    ARRAYCOUNT=0
    if [ ${#MIN_VER_NEEDED[@]} -lt ${#VERSION[@]} ]; then
      ARRAYCOUNT=${#MIN_VER_NEEDED[@]}
    else
      ARRAYCOUNT=${#VERSION[@]}
    fi

    i=0
    while [ $i -le $ARRAYCOUNT ]; do
      if [ ${VERSION[$i]} -gt ${MIN_VER_NEEDED[$i]} ]; then
        echo 1
        return
      elif [ ${VERSION[$i]} -lt ${MIN_VER_NEEDED[$i]} ]; then
        echo 0
        return
      fi
    i=$[ $i + 1 ]
    done

    echo 1
}
