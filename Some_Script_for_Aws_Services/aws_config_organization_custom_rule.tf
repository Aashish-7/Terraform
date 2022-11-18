resource "aws_config_organization_custom_rule" "example" {
  lambda_function_arn = "aws_lambda_function.example.arn"
  name                = "example"
  trigger_types       = [] // trigger_types
  depends_on = []  // make separate resource for that
}