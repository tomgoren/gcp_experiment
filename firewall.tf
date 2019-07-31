resource "google_compute_firewall" "gcp_demo_admin_external_allow" {
  name    = "gcp-demo-admin-firewall"
  network = "${google_compute_network.gcp_demo_vpc.self_link}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["admin"]
}

resource "google_compute_firewall" "gcp_demo_gke_admin_internal_allow" {
  name    = "gcp-demo-gke-admin-internal-firewall"
  network = "${google_compute_network.gcp_demo_vpc.self_link}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_tags = ["admin"]
  target_tags = ["gke"]
}
