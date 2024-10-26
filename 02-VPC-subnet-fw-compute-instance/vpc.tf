resource "google_compute_network" "my_vpc" {
  name                    = "vpc1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet" {
  name          = "us-central1"
  region        = var.region
  ip_cidr_range = "10.128.0.0/20"
  network       = google_compute_network.my_vpc.id
}