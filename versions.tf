terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.35.0" //구버전은 arm64 아키텍처 지원이 안되므로 주의
    }
  }
  #provider_meta "google" {
  #  module_name = "blueprints/terraform/terraform-google-network"
  #}
}
