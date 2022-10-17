# Terraform docs re: configuring back end: https://www.terraform.io/docs/backends/types/gcs.html
terraform {
  backend "gcs" {
    #prefix = "terraform/state"
    bucket = "bkt-prod-clouddevops-sandbox-terraform-state" # Terraform state를 저장할 GCS 버켓 이름을 기입
  }
}

#terraform {
#  backend "local" {
#  }
#}
