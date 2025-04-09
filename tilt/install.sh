#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f "$DIR/../.env" ]
then
    echo "Set up .env.example –> .env first"
    exit 1
else
    echo "local .env found."
fi

