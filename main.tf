# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "custum" {
  name              = "myserver"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  key_pair_name     = "docker-key"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
  tags = {
    Team = "DevOps"
    env = "dev"
    create_by = "Terraform"
  }
}