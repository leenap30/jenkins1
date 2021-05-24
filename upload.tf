provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket_object" "object" {

  bucket = "awsbucketleena3"
  
  key    = "profile3"

  acl    = "public-read"

  source = "index.html"

  etag = filemd5("hindex.html")

}
