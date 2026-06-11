#!/bin/bash
# Script: create_volume.sh
# Purpose: Automate creation of an EBS volume

# Variables (replace with your values)
AVAILABILITY_ZONE="ap-south-1a"   # Must match your EC2 instance AZ
SIZE=5                           # Size in GB
VOLUME_TYPE="gp2"                # General Purpose SSD
TAG_NAME="Primary-EBS"

# Create the volume
VOLUME_ID=$(aws ec2 create-volume \
  --availability-zone $AVAILABILITY_ZONE \
  --size $SIZE \
  --volume-type $VOLUME_TYPE \
  --tag-specifications "ResourceType=volume,Tags=[{Key=Name,Value=$TAG_NAME}]" \
  --query 'VolumeId' \
  --output text)

echo "✅ EBS Volume created successfully: $VOLUME_ID"
