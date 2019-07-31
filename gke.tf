resource "google_container_cluster" "gcp_demo_gke" {
  name     = "gcp-demo-gke-cluster"
  location = "us-central1"

  remove_default_node_pool = true
  initial_node_count = 1

  network = "${google_compute_network.gcp_demo_vpc.name}"
  subnetwork = "${google_compute_subnetwork.gcp_demo_vpc_subnet.name}"
}

resource "google_container_node_pool" "gcp_demo_gke_nodes" {
  name       = "gcp-demo-gke-node-pool"
  location   = "us-central1"
  cluster    = "${google_container_cluster.gcp_demo_gke.name}"
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "n1-standard-1"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    tags = ["gke"]
  }
}
