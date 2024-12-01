#!/usr/bin/env bash

# Check if stack name is provided as a parameter
if [ -z "$1" ]; then
  echo "Error: Stack name is required."
  echo "Usage: delete-stack.sh <stack-name>"
  exit 1
fi

# Set the stack name from the parameter
STACK_NAME=$1

echo "Deleting CloudFormation stack: $STACK_NAME"

# Run the delete stack command
aws cloudformation delete-stack --stack-name $STACK_NAME --region us-east-1
