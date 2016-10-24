#!/bin/bash
export s3path=$1
find files/ -exec ./replace.sh {} \;
