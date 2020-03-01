#!/bin/bash
if [ -z "$1" ]; then
    echo "usage: $0 xxx.tflite"
    exit
fi
name=`echo $1 | cut -d '.' -f 1`
name=$name.pb
ncc -i tflite -o tf $1 $name
