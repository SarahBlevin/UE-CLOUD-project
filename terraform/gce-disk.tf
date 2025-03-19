resource "google_compute_disk" "db_disk" {
  name = var.gce_disk_name
  type = "pd-standard"
  zone = var.zone
  size = 1
}
