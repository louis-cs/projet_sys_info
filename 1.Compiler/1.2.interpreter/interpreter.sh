#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage : ./interpreter.sh file"
else
    if [[ -f ./interpreter/interpreter ]]; then
        ./interpreter/interpreter < $1
    else
        echo "Try make"
    fi    
fi
