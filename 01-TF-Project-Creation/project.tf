resource "google_project" "my_project" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = var.billing_account_id
  deletion_policy = "DELETE"
}