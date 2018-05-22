variable "name" {}
variable "stage" {}
variable "namespace" {}
variable "cloudfront_cert_arn" {}
variable "aliases" { type = "list" }
variable "zone_id" {}
variable "default_root_object" {
  default = "index.html"
}
variable "whitelist" {
  type = "list"

  # example: [ { value = "1.2.3.4/32", type="IPV4"}, { value = "2.3.4.5/28", type="IPV4"} ]
  default = []
}
