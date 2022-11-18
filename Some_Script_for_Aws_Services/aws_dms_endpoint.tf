// create a new endpoint
resource "aws_dms_endpoint" "test" {
  certificate_arn = "your-certificate-arn"
  database_name = "your-database-name"
  endpoint_id   = "your-endpoint-id"
  endpoint_type = "your-endpoint-type"
  engine_name   = "your-engine-name"
  extra_connection_attributes = "your-extra-connection-attributes"
  kms_key_arn = "your-kms-key-arn"
  password = "your-password"
  port = 8080 # your server port
  server_name = "your-server-name"
  ssl_mode = "your-ssl-mode"


  tags = {
    name="test"
  }
  username = "test"

}

# more and more optional arguments reference are there try to search >>