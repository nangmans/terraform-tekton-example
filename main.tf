resource "google_compute_firewall" "rules" {
  name = "test-firewall"
  network = var.network_name
  direction = "INGRESS"
  priority = 1000
  source_ranges = [
    "0.0.0.0/0"
  ]
  source_tags = [
    "some-tag"
  ]
  allow {
    protocol  = "tcp"
    ports     = ["80", "8080", "1000-2000"]
  }


}