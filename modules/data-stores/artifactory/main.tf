resource "aws_s3_bucket" "artifactory" {
  versioning {
    enabled = false
  }
}
