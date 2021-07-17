provider "aws" {
  region = "${var.region}"
  max_retries = 1
}

module "artifactory" {
  source = "./modules/data-stores/artifactory"
}

module "sql" {
  source = "./modules/data-stores/sql"
  master_username = "${var.master_username}"
  master_password = "${var.master_password}"
}
