resource "google_container_cluster" "gke-cluster" {
  name               = "my-second-gke-cluster"
  network            = "default"
  zone               = "europe-west1-a"
  initial_node_count = 3
}
