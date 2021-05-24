resource "aws_s3_bucket_object" "object" {

  bucket = awsbucketleena

  key    = "profile"

  acl    = "public-read"

  source = "th.jpg"

  etag = filemd5("th.jpg")

}
