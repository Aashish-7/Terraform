resource "aws_config_delivery_channel" "example" {
  s3_bucket_name = "your-s3-bucket-name"  # make separate resource for s3-buckets
  depends_on = []  // depends upon which service, and make separate resource
  sns_topic_arn = ""  // optional
  snapshot_delivery_properties {delivery_frequency = "one_hour  "}  # optional
}

resource "aws_s3_bucket" "bucket" {
  bucket = "your-bucket"
  force_destroy = true
}