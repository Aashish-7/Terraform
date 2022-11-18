resource "aws_api_gateway_stage" "example" {
  deployment_id = "aws_api_gateway_deployment.example.id"
  rest_api_id   = "aws_api_gateway_rest_api.example.id"
  stage_name    = "for-example-purpose"
}

resource "aws_api_gateway_domain_name" "example" {
  domain_name = "example.com"

  certificate_name = "your-certificate-name"
  certificate_body = "your-certificate-body"
  certificate_chain = "????"
  certificate_private_key = "your-certificate-private-key"
}

resource "aws_api_gateway_base_path_mapping" "training-purpose" {
  api_id      = "your_api_id.id"
  domain_name = "your domain name with .com extension, aws_api_gateway_domain_name.example.domain_name"
  stage_name = "stage name make it , aws_api_gateway_stage.example.stage_name"
  base_path = "/"  // base path
}