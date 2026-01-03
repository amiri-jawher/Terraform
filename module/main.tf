provider "aws" {
  region = "eu-west-3"
}


resource "aws_instance" "my_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    
    }