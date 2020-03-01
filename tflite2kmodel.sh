#!/bin/bash
if [ -z "$1" ]; then
    echo "uasge: $0 xxx.tflite"
    exit
fi
name=`echo $1 | cut -d '.' -f 1`
name=$name.kmodel
./ncc/ncc -i tflite -o k210model --dataset images $1 ./$name
