variable "project" {
  description = "프로젝트 ID"
}

variable "zone" {
  default     = "asia-northeast3-a"
  description = "리소스가 위치할 Zone"
}

variable "region" {
  default     = "asia-northeast3"
  description = "리소스가 위치할 Region"
}

variable "network_name" {
  description = "리소스가 위치할 VPC 네트워크"
}