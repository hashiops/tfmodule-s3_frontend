resource "aws_s3_bucket" "dev_sche-mcc_info" {
  bucket = "dev.sche-mcc.info"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_route53_record" "dev_sche-mcc_info" {
  zone_id = "Z11BKUNQC0LRJB"
  name    = "dev.sche-mcc.info"
  type    = "CNAME"
  ttl     = 300
  records = ["${aws_s3_bucket.dev_sche-mcc_info.website_endpoint}"]
}
