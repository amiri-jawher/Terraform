provider "aws" {
    region = "eu-west-3"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "s3-bucket-storage-development"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


resource "aws_instance" "ec2" {
  instance_type = "t2.micro"
  ami = "ami-0ef9bcd5dfb57b968"
  subnet_id = "subnet-04070deb5a37e4209"
}