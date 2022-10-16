module "test-vpc" {                      //module name은 임의로 짓기 가능
  source       = "git::https://stash.wemakeprice.com/scm/~lswoo/terraform-google-network.git" //module 위치, folder 이름을 지정
  project      = var.project
  network_name = var.network_name
}

resource "google_compute_subnetwork" "test-subnetwork" {
  name          = "test-subent"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network      = var.network_name
}

