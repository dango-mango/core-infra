resource "aws_s3_bucket" "artifactory" {
  bucket = "dangomango-artifactory-${var.region}"
  versioning {
    enabled = false
  }
}
