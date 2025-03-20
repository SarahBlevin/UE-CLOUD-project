output "gke_cluster_name" {
  value = google_container_cluster.gke_cluster.name
}

output "gce_disk_name" {
  value = google_compute_disk.db_disk.name
}
