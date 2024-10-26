terraform {
  required_version = "~>1.8.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>5.33.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = "us-central1"
}