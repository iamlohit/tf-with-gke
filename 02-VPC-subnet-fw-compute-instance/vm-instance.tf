resource "google_compute_instance" "myapp1" {
  name         = "my-app-1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  tags         = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw_http.target_tags)[0]]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  metadata_startup_script = file("${path.module}/app1-webserver-install.sh")
  network_interface {
    network    = google_compute_network.my_vpc.id
    subnetwork = google_compute_subnetwork.my_subnet.id
    access_config {

    }
  }
}