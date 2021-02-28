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

resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.b.id}"
  key    = "hello-world.txt"
  source = "arquivo.txt"
   etag = filemd5("arquivo.txt")
}

output "bucket" {
  value = "${aws_s3_bucket.b.id}"
}

output "etag" {
  value = "${aws_s3_bucket_object.object.etag}"
  
}