resource "aws_rds_cluster" "sql" {
  cluster_identifier = "skincare"
  engine = "aurora-mysql"
  engine_version  = "5.7.mysql_aurora.2.07.1"
  database_name = "skincare"
  master_username = "${var.master_username}"
  master_password = "${var.master_password}"
  engine_mode = "serverless"
  backup_retention_period = 1
  skip_final_snapshot = true
  scaling_configuration {
    auto_pause               = true
    max_capacity             = 1
    min_capacity             = 1
    seconds_until_auto_pause = 300
  }
}
