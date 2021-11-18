#!/bin/bash

HOST=$1
USER=$2
PASSWD=$3
REMOTE=$4

while IFS= read -r line
do
  ./run_cmd.exp $HOST $USER $PASSWD $line $REMOTE/$line

done < <(git diff --name-only)

