resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length           = 16
  special          = false
  override_special = ""
}

resource "aws_s3_bucket" "bucket_name" {
  bucket = random_string.bucket_name.result

  tags = {
    UserUuid = var.user_uuid
  }
}