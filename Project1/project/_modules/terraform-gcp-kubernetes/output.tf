output "endpoint" {
  value = google_container_cluster.gke_cluster.endpoint
}

output "master_version" {
  value = google_container_cluster.gke_cluster.master_version
}