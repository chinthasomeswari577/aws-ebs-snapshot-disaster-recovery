aws ec2 attach-volume \
  --volume-id vol-05ae2e4ee6a160acb \
  --instance-id i-0905a9a97ddccfeff \
  --device /dev/sdf \
  --region ap-south-1
echo "✅ Volume attached to recovery EC2 instance i-0905a9a97ddccfeff in ap-south-1"
