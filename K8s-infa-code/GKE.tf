resource "google_container_cluster" "GKE-Cluster" {
  name               = "md-tanvir"
  location           = "us-central1-a"
  initial_node_count = 3

  master_auth {
    username = "tanvir0102"
    password = "Sec!@#45"

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      name = "gke-cluster"
    }

    tags = ["gke-cluster", "media-app"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}