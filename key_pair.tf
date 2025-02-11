resource "tls_private_key" "project_key" {
  algorithm = "RSA"
  rsa_bits  = "2048"
}
resource "aws_key_pair" "project_key" {
  key_name   = "project_key"
  public_key = tls_private_key.project_key.public_key_openssh

}

