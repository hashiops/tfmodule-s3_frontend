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
  default = [{ value = "0.0.0.0/1", type="IPV4"}, { value = "128.0.0.0/1", type="IPV4"}]
}
