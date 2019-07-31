resource "google_compute_network" "gcp_demo_vpc" {
  name = "gcp-demo-vpc"
  auto_create_subnetworks = true
}

resource "google_compute_subnetwork" "gcp_demo_vpc_subnet" {
  name = "gcp-demo-vpc-subnet"
  ip_cidr_range = "${var.gke_node_cidr_block}"
  network = "${google_compute_network.gcp_demo_vpc.self_link}"
}
