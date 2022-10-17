resource "google_compute_network" "test-network" {                      //module name은 임의로 짓기 가능
  project      = var.project
  name = var.network_name
  auto_create_subenetworks = false
}

resource "google_compute_subnetwork" "test-subnetwork" {
  name          = "test-subent"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network      = google_compute_network.test-network.name
}
