resource "google_container_cluster" "gke_cluster" {
  name     = var.gke_cluster_name
  location = var.zone

  remove_default_node_pool = true
  initial_node_count       = 3

  node_config {
    machine_type = "n2-standard-2"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
