#!/bin/bash

if [[ -z "$1" || -z "$2" ]]
then
    echo "Usage: $0 FILE COMMAND";
    exit 1;
fi

COMMAND=$2;

while IFS='' read -r line || [[ -n "$line" ]]; do
    eval "${COMMAND} \"$line\"";
done < "$1"
