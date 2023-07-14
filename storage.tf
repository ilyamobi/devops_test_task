resource "aws_s3_bucket" "shared_bucket" {
  bucket = "app-shared-bucket"
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "shared_bucket_block" {
  bucket = aws_s3_bucket.shared_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}