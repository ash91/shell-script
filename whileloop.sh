#!/bin/bash

while [ -f ~/Downloads/testfile ]
do
    echo "test file exists as on $(date)"
done

echo "file does'nt exist"
