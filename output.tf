output "private_key" {
    value = tls_private_key.project_key.private_key_pem
    sensitive = true
}
output "public_ip" {
    value = aws_instance.project.public_ip
  
}
