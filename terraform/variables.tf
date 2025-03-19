variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  default     = "europe-west9"
}

variable "zone" {
  description = "GCP zone"
  default     = "europe-west9-a"
}

variable "gke_cluster_name" {
  description = "Name of the GKE cluster"
  default     = "project-cluster"
}

variable "gce_disk_name" {
  description = "Name of the GCE persistent disk"
  default     = "db-disk"
}
