resource "google_container_cluster" "gke-cluster" {
  name               = "my-first-gke-cluster"
  network            = "default"
  zone               = "europe-west2-a"
  initial_node_count = 3
}
