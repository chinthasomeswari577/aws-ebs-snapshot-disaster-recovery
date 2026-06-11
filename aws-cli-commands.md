Create Volume
aws ec2 create-volume \
--availability-zone ap-south-1a \
--size 5 \
--volume-type gp2

Attach Volume
aws ec2 attach-volume \
--volume-id vol-xxxxxxxx \
--instance-id i-xxxxxxxx \
--device /dev/sdf

Create Snapshot
aws ec2 create-snapshot \
--volume-id vol-xxxxxxxx \
--description "Primary EBS Backup"

Create Volume From Snapshot
aws ec2 create-volume \
--snapshot-id snap-xxxxxxxx \
--availability-zone ap-south-1b