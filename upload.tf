provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket_object" "object" {

  bucket = "awsbucketleena2"
  
  key    = "profile3"

  acl    = "public-read"

  source = "th.jpg"

  etag = filemd5("th.jpg")

}
