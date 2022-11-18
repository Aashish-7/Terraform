resource "aws_dms_replication_instance" "test" {
  allocated_storage = 20
  apply_immediately = true
  auto_minor_version_upgrade = true
  availability_zone = "your-availability-zone"
  engine_version = "your-engine-version"
  kms_key_arn = "your-kms-key-arn"
  multi_az = false
  preferred_maintenance_window = "your-window"
  publicly_accessible = true
  replication_instance_class = "your-replication-instance-class"
  replication_instance_id    = "your-replication-instance-id"
  replication_subnet_group_id = "your-subnet-group-id"

  tags = {
    name="test"
  }
  vpc_security_group_ids = ["df4567"]

  depends_on = []#...]]  # make separate resource which add on depends_on attributes !!
}