#!/bin/bash
# attach-volume.sh

# Replace these with your actual IDs
INSTANCE_ID="i-008a1c097e095293d"   # EC2 instance ID
VOLUME_ID="vol-0b46425e3c2c74835"   # EBS volume ID
DEVICE="/dev/sdf"                   # Linux device name

# Attach the volume
aws ec2 attach-volume \
  --instance-id $INSTANCE_ID \
  --volume-id $VOLUME_ID \
  --device $DEVICE \
  --region ap-south-1
echo "✅ Volume $VOLUME_ID attached to instance $INSTANCE_ID as $DEVICE"