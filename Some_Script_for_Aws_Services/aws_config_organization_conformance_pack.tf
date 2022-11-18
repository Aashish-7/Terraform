resource "aws_config_organization_conformance_pack" "example" {
  name = "example"

  input_parameter {
    parameter_name  = "your-parameter-name"
    parameter_value = "your=parameter-value"
  }

  template_body = ""   // it is for template body
}

resource "aws_config_organization_conformance_pack" "demo" {
  name = "demo"
  // make s3 resource separate
  template_s3_uri = "s3 / ????"   // using template s3 uri
  depends_on = []  // make separate resource for depending service
}