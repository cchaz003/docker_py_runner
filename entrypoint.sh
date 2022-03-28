#!/bin/sh

cd /data

FILE=./requirements.txt
if test -f "$FILE"; then
    echo "$FILE exists."
    pip3 install -r requirements.txt
fi

exec "$@"