provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "Terraform-Project" {
    ami = var.ami_id
    instance_type = var.aws_instance_type
    key_name = "LearnDevops"
    vpc_security_group_ids = ["sg-0a43221cca0a3cb2f"]
    tags = {
      Name = "Terraform-Project"
    }
}
