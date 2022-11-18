resource "aws_dms_replication_subnet_group" "test" {
  replication_subnet_group_description = "write-description-here"
  replication_subnet_group_id          = "your-replication-subnet-group-id"
  subnet_ids                           = ["subnet-id-SDF12345"]

  tags = {
    name="test"
  }
}