#!/bin/bash

HOST=$1 # 10.71.5.79
USER=$2 # vagrant
PASSWD=$3 # vagrant
REMOTE=$4 # /opt/acn/head

while IFS= read -r line
do
  ./run_cmd.exp $HOST $USER $PASSWD $line $REMOTE/$line

done < <(git diff --name-only)

