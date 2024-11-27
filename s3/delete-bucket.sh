#!/usr/bin/env bash

# Validate exactly one argument is provided
if [ $# -ne 1 ] || [ -z "$1" ]; then
   echo "Error: Do you wanna delete a bucket ? if yes , then enter bucket name while executing file"
   exit 1
fi

BUCKET_NAME=$1

aws s3api delete-bucket --bucket $BUCKET_NAME --region us-east-1 

echo "=== Bucket deleted successfully ==="
