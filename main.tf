module "cloudfront-s3-cdn" {
  source  = "github.com/cloudposse/terraform-aws-cloudfront-s3-cdn"

  name = "${var.name}"
  stage = "${var.stage}"
  namespace = "${var.namespace}"

  acm_certificate_arn = "${var.cloudfront_cert_arn}"
  aliases = "${var.aliases}"
  parent_zone_name = "${var.zone_name}"
  parent_zone_id = "${var.zone_id}"
}
