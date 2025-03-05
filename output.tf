output "my-public-ip" {
  value = aws_lightsail_instance.custum.public_ip_address
}

output "my-username" {
  value = aws_lightsail_instance.custum.username
}
