resource "google_container_cluster" "gke-cluster" {
  name               = "my-second-gke-cluster"
  network            = "default"
  location           = "europe-west2-a"
  initial_node_count = 1
}
