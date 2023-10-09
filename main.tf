terraform {
# #   cloud {
# #     organization = "terraform-bootcamp-2023-updated"

# #     workspaces {
# #       name = "terra-house-galall-1"
# #     }
# #   }
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.17.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
# }

# # provider "random" {
# #   # Configuration options
# # }

# resource "aws_s3_bucket" "website_bucket" {
#   bucket = var.bucket_name

#   tags = {
#     UserUuid = var.user_uuid
#   }
}

module "terrahouse_aws" {
  source = "./modules/aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
  content_version = var.content_version
  assets_path = var.assets_path
}