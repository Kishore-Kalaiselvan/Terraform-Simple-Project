
provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "Terraform_Project" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    tags = {
      Name = "Terraform_Project"
    }
  
}