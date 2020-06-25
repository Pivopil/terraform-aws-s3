provider "aws" {
}

resource "aws_s3_bucket" "aws_training" {
  bucket_prefix = "${var.name}-"

  tags = {
    Owner       = local.username
    Environment = var.environment
    Project     = var.name
    username    = local.username
  }
}

resource "aws_s3_bucket_public_access_block" "private" {
  bucket = aws_s3_bucket.aws_training.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
