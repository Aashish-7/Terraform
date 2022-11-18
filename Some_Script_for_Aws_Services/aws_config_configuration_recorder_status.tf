resource "aws_config_configuration_recorder_status" "for-demo" {
  is_enabled = false  #Required
  name       = "aws_config_configuration_recorder.for-demo.name" # mention name here #Required
  depends_on = [aws_config_delivery_channal.]  // write depends upon which resource
}
resource "aws_s3_bucket" "buckets" {

}

resource "aws_config_delivery_channel" "delevery-channal" {
  s3_bucket_name = "your-bucket-name"  // make separate bucket resource
}

// make some resource for role, and policy and policy-attachment
// search google <3   ????