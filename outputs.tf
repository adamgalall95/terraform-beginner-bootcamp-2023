output "bucket_name" {
  value = module.terrahouse_aws.bucket_name
}

output "s3_web_endpoint" {
  value = module.terrahouse_aws.website_endpoint
}

output "cloudfront_url" {
  value = module.terrahouse_aws.cloudfront_url
}