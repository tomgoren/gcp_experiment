resource "google_compute_instance" "gcp_demo_admin_vm" {
  name         = "gcp-demo-admin"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "gce-uefi-images/ubuntu-1804-lts"
    }
  }

  network_interface {
    network       = "${google_compute_network.gcp_demo_vpc.self_link}"
    access_config {
    }
  }

  tags = ["admin"]
}
