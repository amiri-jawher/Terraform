provider "aws" {
  region = "eu-west-3"
}



module "ec2_instance" {
  source = "./module"
  ami = "ami-0ef9bcd5dfb57b968"
  instance_type = "t2.mirco"
  subnet_id = "subnet-0f4f0145c8db3c647"

}