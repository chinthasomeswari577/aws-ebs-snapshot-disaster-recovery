aws ec2 create-volume \
  --snapshot-id snap-0904954197d6f658a \
  --availability-zone ap-south-1b \
  --region ap-south-1
echo "✅ Volume creation initiated from snapshot snap-0904954197d6f658a in ap-south-1b"