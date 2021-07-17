variable "region" {
  description = "AWS region"
  type = string
}

variable "sql_master_username" {
  description = "Master username"
  type = string
  sensitive = true
}

variable "sql_master_password" {
  description = "Master password"
  type = string
  sensitive = true
}