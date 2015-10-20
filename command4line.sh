#!/bin/bash

COMMAND=$2;

while IFS='' read -r line || [[ -n "$line" ]]; do
    eval "${COMMAND} \"$line\"";
done < "$1"
