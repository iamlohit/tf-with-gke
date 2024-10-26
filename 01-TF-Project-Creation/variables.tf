variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "project_id" {
  description = "The unique project ID"
  type        = string
}

variable "billing_account_id" {
  description = "The billing account ID"
  type        = string
}

variable "services" {
  type    = list(string)
  default = ["compute.googleapis.com", "storage.googleapis.com", "container.googleapis.com", "cloudresourcemanager.googleapis.com"]
}