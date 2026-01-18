provider "aws" {
  region = "ap-northeast-1"
}
resource "aws_s3_bucket" "test" {
  bucket = "your-unique-bucket-name-masamsa20260117"
}
# mistake test
