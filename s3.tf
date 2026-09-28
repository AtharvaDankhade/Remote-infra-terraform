resource "aws_s3_bucket" "remote_infra" {
  bucket = "remote-infra-bucket-terraform"

  tags = {
    Name        = "remote-infra-bucket-terraform"
    Environment = "Dev"
  }
}