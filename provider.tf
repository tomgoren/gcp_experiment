provider "google" {
  credentials = "${file("gcp_credentials.json")}"
  project     = "${var.gcp_project}"
  region      = "us-central1"
  zone        = "us-central1-a"
}
