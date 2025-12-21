provider "aws" {
  region = "eu-west-3"
}



















resource "aws_instance" "my_ec2" {
  ami           = "ami-0ef9bcd5dfb57b968"
  instance_type = "t2.micro"
}




resource "aws_instance" "app" {
  # If var.environment is "prod", make 5, otherwise make 1
  count = var.environment == "prod" ? 5 : 1
  
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}


