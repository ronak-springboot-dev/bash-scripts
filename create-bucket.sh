#!/usr/bin/env bash 

echo "=== Creating a bucket ==="

# Validate exactly one argument is provided
if [ $# -ne 1 ] || [ -z "$1" ]; then
   echo "Error: Provide exactly one non-empty bucket name"
   exit 1
fi

BUCKET_NAME=$1

# Create bucket with argument
aws s3api create-bucket --bucket $BUCKET_NAME --region us-east-1

echo "=== Wohooo, Bucket created successfully ==="
