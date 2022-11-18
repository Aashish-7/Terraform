# create a new certificate
resource "aws_dms_certificate" "testing-purpose" {
  certificate_id = "testing-purpose-certificate-id"   // required
  certificate_pem = "..."  # certificate pem  // optional
  certificate_wallet = ""   # optional

  tags = {    # optional
    name="testing-purpose"
  }
}