resource "aws_api_gateway_authorizer" "try-as-a-demo" {
  name        = "name of that demo"
  rest_api_id = "aws_api_gateway_rest_api.demo.id"
  authorizer_uri = "aws_lambda_function.authorizer.invoke_arn"
  authorizer_credentials = "aws_iam_role.invocation_role.arn"
  identity_validation_expression = ""
  provider_arns = []
}

resource "aws_api_gateway_rest_api" "demo-purpose" {
  name = "auth-demo"
}

resource "aws_iam_role" "fill-role-for-authentication" {
  assume_role_policy = "fill-the-policies"
  path = "/"
}

resource "aws_iam_role_policy" "role-policy" {
  name = "defaults"
  policy = "policy-details"
  role   = "aws_iam_role.invocation_role.id"
}

resource "aws_lambda_function" "authrizer" {
  function_name = "function-name, eg: api_gateway_authorizer"
  role          = "aws_role"
  filename = "lambda_function.zip"  // a zip file
  handler = "your-handler.example"

  source_code_hash = "???????????"

  a
}