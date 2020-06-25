provider "aws" {
}

data "aws_iam_policy_document" "bucket_policy" {
  statement {

    principals {
      identifiers = ["*"]
      type = "*"
    }
    effect = "Allow"

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "arn:aws:s3:::${var.name}/index.html",
    ]
  }
}

resource "aws_s3_bucket_object" "index_html" {
  bucket = aws_s3_bucket.aws_training.id
  key = "index.html"
  content = "<h1>Hello, public bucket</h1>"
  content_type = "text/html"
}

resource "aws_s3_bucket" "aws_training" {
  bucket = var.name

  acl = "public-read"
  policy        = data.aws_iam_policy_document.bucket_policy.json

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
