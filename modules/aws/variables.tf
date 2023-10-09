variable "user_uuid" {
  description = "User UUID in the format of a UUID"
  type        = string

  validation {
    condition     = can(regex("^([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})$", var.user_uuid))
    error_message = "Invalid user_uuid format. Please provide a valid UUID."
  }
}

variable "bucket_name" {
  description = "AWS S3 bucket name"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9.-]{3,63}$", var.bucket_name))
    error_message = "Invalid bucket_name format. It must be between 3 and 63 characters long, start and end with a lowercase letter or number, and consist of lowercase letters, numbers, hyphens, and periods only."
  }
}

# variable "index_html_filepath" {
#   description = "File path for the index.html file"
#   type        = string

#   validation {
#     condition     = fileexists(var.index_html_filepath)
#     error_message = "Invalid index_html_filepath. The file does not exist."
#   }
# }

# variable "error_html_filepath" {
#   description = "File path for the error.html file"
#   type        = string

#   validation {
#     condition     = fileexists(var.error_html_filepath)
#     error_message = "Invalid error_html_filepath. The file does not exist."
#   }
# }

variable "content_version" {
  description = "Positive integer starting from 1"
  type        = number

  validation {
    condition     = var.content_version >= 1 && floor(var.content_version) == var.content_version
    error_message = "Invalid content. Please provide a positive integer starting from 1."
  }
}

variable "assets_path" {
  description = "path to asset folder"
  type = string
}