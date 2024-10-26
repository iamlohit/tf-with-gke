resource "google_project" "my_project" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = var.billing_account_id
}

resource "google_project_service" "name" {
  for_each = toset(var.services)
  project  = google_project.my_project.project_id
  service  = each.value
}