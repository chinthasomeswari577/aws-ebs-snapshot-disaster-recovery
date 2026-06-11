#!/bin/bash
TODAY=$(date +"%Y-%m-%d %H:%M:%S")
aws ec2 create-snapshot \
  --volume-id vol-0b46425e3c2c74835 \
  --description "Snapshot created on $TODAY" \
  --region ap-south-1
echo "✅ Snapshot creation initiated at $TODAY for volume vol-0b46425e3c2c74835"
