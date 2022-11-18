resource "aws_config_config_rule" "some-rules" {
  name = "your-rule-name"
  description = "some-description"   // for understanding purpose
  scope {compliance_resource_id = "some-scope"} // your scope, again it is optional
  scope {compliance_resource_types = []}  // under scope compliance resource types
  tags = {}   // again it is optional

  source {
    owner = "who-is-owner?" // it is required in source
    source_identifier = "your-source-identifier"
    source_detail {}   // write source details
    custom_policy_details {  // some custom policy details
      policy_runtime = ""
      policy_text    = ""
    }
  }
  depends_on = []  //here list of all aws config configuration
}

// some more tags and attributes references  ????