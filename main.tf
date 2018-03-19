module "registry-staticsite" {
  source = "github.com/justincampbell/terraform-aws-staticsite"

  region = "${var.region}"
  error_document = "error.html"
  bucket = "${var.name}"
  domain = ""

}



resource "aws_route53_record" "dev_sche-mcc_info" {
  zone_id = "${var.route53_zone_id}"
  name    = "${var.name}"
  type    = "CNAME"
  ttl     = 300
  records = ["${module.registry-staticsite.website_endpoint}"]
}
