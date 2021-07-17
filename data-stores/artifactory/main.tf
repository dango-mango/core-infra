provider "aws" {
  region = "${var.region}"
  max_retries = 1
}

resource "aws_s3_bucket" "artifactory" {
  versioning {
    enabled = false
  }
}
