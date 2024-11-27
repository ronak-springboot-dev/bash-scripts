#!/usr/bin/env bash

echo "Listing all buckets info"

# Validate exactly one argument is provided
if [ $# -ne 1 ] || [ -z "$1" ]; then
   echo "Error: Do you list content of a bucket ? if yes , then enter bucket name while executing file"
   exit 1
fi

BUCKET_NAME=$1

aws s3api list-objects-v2 --bucket $BUCKET_NAME 