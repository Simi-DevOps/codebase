resource "aws_s3_bucket" "testbucket" {
  bucket = "dev.somerandomname"

  tags = {
    Name        = "My bucket"
    Environment = "DEV"
  }
}