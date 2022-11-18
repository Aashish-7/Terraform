resource "aws_dms_replication_task" "test" {
  cdc_start_time           = "23456"
  migration_type           = "your-migration-type"
  replication_instance_arn = "your-replication-instance-arn"
  replication_task_id      = "your-replication-task-id"
  source_endpoint_arn      = "your-endpoint-arn"
  table_mappings           = "mapping"
  target_endpoint_arn      = "your-endpoint-arn"

  tags = {
    name="test"
  }
}