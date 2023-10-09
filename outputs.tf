output "bucket_name" {
  value = module.terrahouse_aws.bucket_name
  sensitive = true
}

output "s3_web_endpoint" {
  value = module.terrahouse_aws.website_endpoint
}

locals {
  root_path = path.root
}

output "root_path" {
  value = local.root_path
}
# output "cloudfront_url" {
#   value = module.terrahouse_aws.cloudfront_url
# }