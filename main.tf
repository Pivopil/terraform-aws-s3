provider "aws" {
}

resource "aws_s3_bucket_object" "index_html" {
  bucket = aws_s3_bucket.aws_training.id
  key = "index.html"
  content = "<h1>Hello, private bucket</h1>"
  content_type = "text/html"
  acl = "public-read"
  cache_control = "max-age=604800"
}

resource "aws_s3_bucket" "aws_training" {
  bucket = var.name

  acl = "private"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

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
  ignore_public_acls      = false
  restrict_public_buckets = true
}
