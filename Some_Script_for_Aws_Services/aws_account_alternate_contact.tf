resource "aws_account_alternate_contact" "some_operations" {
  alternate_contact_type = "security_purpose"
  email_address          = "aashish.kumar@ioanyt.com"
  name                   = "Aashish_Kumar"
  phone_number           = "730XXXXXXX"
  title                  = "as a example to change account contact info"
  account_id             = "ABC011"
}
