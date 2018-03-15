module "registry-staticsite" {
  source = "github.com/justincampbell/terraform-aws-staticsite"

  region = "${var.region}"
  error_document = "error.html"
  bucket = "dev.sche-mcc.info"

}

resource "aws_route53_record" "dev_sche-mcc_info" {
  zone_id = "Z11BKUNQC0LRJB"
  name    = "dev.sche-mcc.info"
  type    = "CNAME"
  ttl     = 300
  records = ["${module.registry-staticsite.website_endpoint}"]
}
