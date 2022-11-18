resource "aws_config_aggregate_authorization" "for-training-purpose" {
  account_id = "your-account-id"
  region     = "your-region"
  tags = {}  // again it is optional
}