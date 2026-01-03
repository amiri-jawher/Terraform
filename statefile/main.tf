provider "aws" {
    region = "eu-west-3"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "statefile-bucket-storage"
}