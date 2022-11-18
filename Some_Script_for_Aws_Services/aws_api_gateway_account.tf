resource "aws_api_gateway_account" "demo" {
  cloudwatch_role_arn = "It is optional (to allow logging and monitoring)"
}

resource "aws_iam_role" "cloudwatch" {
  name = "api_gateway_cloudwatch_global"

  assume_role_policy = ""
}
