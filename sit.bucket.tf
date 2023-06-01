resource "aws_s3_bucket" "testbucket2" {
  bucket = "sit.somerandomname"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}