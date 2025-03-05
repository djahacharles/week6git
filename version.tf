 terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.60.0"
    }
  }
}

# Define the porvider
provider "aws" {
  region = "us-east-1"
{
