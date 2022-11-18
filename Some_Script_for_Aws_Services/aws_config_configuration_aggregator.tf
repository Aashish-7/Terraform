resource "aws_config_configuration_aggregator" "for-demo-purpose" {
  name = "example"

  account_aggregation_source {      // account based aggregation
    account_ids = ["123456789"]  // write your account id's here
    regions = ["us-west-2"]  // write your region here
  }

}
resource "aws_config_configuration_aggregator" "example" {
  name = "example"  #Required

  organization_aggregation_source {  // organization based aggregation
    // for role make separate resource
    role_arn = "aws_iam_role" // aws organization role arn
    all_regions = true   // return boolean value true or false
  }
}

resource "aws_iam_role" "for-organization" {
  assume_role_policy = ""
}