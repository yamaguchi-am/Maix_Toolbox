#!/bin/bash
if [ -z "$1" ]; then
    echo "usage: $0 xxx.tflite"
    exit
fi
name=`echo $1 | cut -d '.' -f 1`
name=$name.pb
ncc -i tflite -o addpad  $1 $name
echo "gen addpad pb ok! please convert pb to tflite, then covert to kmodel"
