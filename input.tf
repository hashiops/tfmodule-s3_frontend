variable "name" {}
variable "stage" {}
variable "namespace" {}

variable "attributes" {
  type    = "list"
  default = []
}

variable "cloudfront_cert_arn" {}

variable "aliases" {
  type = "list"
}

variable "zone_id" {}

variable "default_root_object" {
  default = "index.html"
}
