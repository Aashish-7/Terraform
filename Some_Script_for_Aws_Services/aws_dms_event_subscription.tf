resource "aws_dms_event_subscription" "example" {
  enabled = true
  event_categories = []   # event categories
  name             = "your-resource-name"
  sns_topic_arn    = "your-sns-topic-arn"
  source_ids = []  # your source ids
  source_type = "your-source-type"

  tags = {
    name="example"
  }
}