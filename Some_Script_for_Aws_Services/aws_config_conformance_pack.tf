resource "aws_config_conformance_pack" "example" {
  name = "example" // mention name here
  delivery_s3_bucket = ""   // optional
  delivery_s3_key_prefix = ""    // optional

  input_parameter {    // optional
    parameter_name  = "parameter-name"
    parameter_value = "parameter-value"
  }

  template_body = ""   // for template body

  depends_on = []  // ??????????
}

resource "aws_config_conformance_pack" "demo" {
  name = "demo"
  //optional
  template_s3_uri = "s3 / ???"   # make separate resource for s3 buckets

  depends_on = []
}
resource "aws_s3_bucket" "for-template" {

}