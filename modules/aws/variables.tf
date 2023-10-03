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
