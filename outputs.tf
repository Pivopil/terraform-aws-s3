output "id" {
  description = "id"
  value       = aws_s3_bucket.aws_training.id
}

output "arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname"
  value       = aws_s3_bucket.aws_training.arn
}

output "bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = aws_s3_bucket.aws_training.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value       = aws_s3_bucket.aws_training.bucket_regional_domain_name
}

output "hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  value       = aws_s3_bucket.aws_training.hosted_zone_id
}

output "region" {
  description = "The AWS region this bucket resides in."
  value       = aws_s3_bucket.aws_training.region
}

output "website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.aws_training.website_endpoint
}

output "website_domain" {
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records."
  value       = aws_s3_bucket.aws_training.website_domain
}
