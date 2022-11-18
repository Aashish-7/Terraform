resource "aws_config_remediation_configuration" "demo" {
  config_rule_name = "" // write here config rule name ,  and make separate resource
  target_id        = "" // target id
  target_type      = "" // target type
  target_version = "?"  // target version
  automatic = true // optional
}