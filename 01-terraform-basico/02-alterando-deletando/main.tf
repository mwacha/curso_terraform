provider "aws" {
  region     = "us-east-1" 
}

resource "aws_s3_bucket" "b" {
  bucket = "mwacha-bucket-dev"
  acl    = "private"

  tags = {
    Name        = "My super bucket"
    Environment = "Prod"
  }
}