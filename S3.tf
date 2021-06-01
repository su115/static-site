
provider "aws" {
  profile = "Igor"
  region  = "eu-west-1"
}



resource "aws_s3_bucket" "bucket" {
		  bucket = "igorbucket3"
		  acl    = "public-read"

	}

resource "aws_s3_bucket_object" "ml"{
		bucket = aws_s3_bucket.bucket.id
		source = "./main.html"
		key = "igor.html"
		acl = "public-read"
		content_type = "text/html"
	}
