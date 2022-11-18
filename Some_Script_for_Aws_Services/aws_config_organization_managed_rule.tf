resource "aws_config_organization_managed_rule" "example" {
  name            = "example"
  rule_identifier = ""  // rule identifier
  depends_on = []  // make separate resource for under the depends_on tag

  description = ""  # it is optional

  # some more optional arguments reference  ?????
}