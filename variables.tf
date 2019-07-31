variable "gcp_project" {
  default = "gcp-experiment-12345"
  description = "GCP Project ID"
}


variable "gke_node_cidr_block" {
  default = "10.96.0.0/14"
  description = "IPv4 block to use for GKE nodes"
}
