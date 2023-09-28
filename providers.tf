terraform {
#   cloud {
#     organization = "terraform-bootcamp-2023-updated"

#     workspaces {
#       name = "terra-house-galall-1"
#     }
#   }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}
