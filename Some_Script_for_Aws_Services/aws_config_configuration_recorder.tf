resource "aws_config_configuration_recorder" "demo" {
  role_arn = "aws_iam_role.arn"   // make separate role resource
  recording_group {all_supported = true} // it is optional
}

resource "aws_iam_role" "demo" {
  assume_role_policy = ""
}