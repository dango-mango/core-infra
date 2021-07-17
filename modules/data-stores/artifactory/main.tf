resource "aws_s3_bucket" "artifactory" {
  bucket = "artifactory-${var.region}"
  versioning {
    enabled = false
  }
}
