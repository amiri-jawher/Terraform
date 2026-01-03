provider "aws" {
  region = "eu-west-3"
}

# تعريف المتغير environment
variable "environment" {
  description = "Environment type: dev or prod"
  type        = string
  default     = "dev"
}

# EC2 ثابت واحد
resource "aws_instance" "my_ec2" {
  ami           = "ami-0ef9bcd5dfb57b968"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2"
  }
}

# EC2 ديناميكي حسب البيئة
resource "aws_instance" "app" {
  # إذا كانت البيئة prod، ينشئ 5 instances، وإلا 1
  count = var.environment == "prod" ? 5 : 1

  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name        = "App-${count.index + 1}"
    Environment = var.environment
  }
}
