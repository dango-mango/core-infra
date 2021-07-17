provider "aws" {
  region = "${var.region}"
  max_retries = 1
}

resource "aws_rds_cluster" "skincare" {
  cluster_identifier = "aurora-cluster-demo"
  engine = "aurora-mysql"
  engine_version  = "mysql_aurora.5.6.10a"
  database_name = "skincare"
  master_username = "${var.master_username}"
  master_password = "${var.master_password}"
  engine_mode = "serverless"
  backup_retention_period = 0
  scaling_configuration {
    auto_pause               = true
    max_capacity             = 1
    min_capacity             = 1
    seconds_until_auto_pause = 300
  }
}
