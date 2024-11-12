variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "project_id" {
  description = "The unique project ID"
  type        = string
}

variable "region" {
  type    = string
  default = "us-central1"
}