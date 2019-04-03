#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage : ./test.sh testcases/testfile.asm"
else
    ./interpreter/interpreter < $1
fi
