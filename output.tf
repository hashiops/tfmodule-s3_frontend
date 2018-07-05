output "cf_domain_name" {
  value = "${module.cloudfront-s3-cdn.cf_domain_name}"
}

output "s3_bucket_id" {
  value = "${module.cloudfront-s3-cdn.s3_bucket}"
}

output "s3_bucket_domain_name" {
  value = "${module.cloudfront-s3-cdn.bucket_domain_name}"
}
