# terraform-aws-s3
Custom module for AWS S3

## Configure Terraform Provider
```
export AWS_PROFILE="training-aws"
export AWS_DEFAULT_REGION="eu-central-1"
```
or change main.tf like this
```
provider "aws" {
  region  = "eu-central-1"
  profile = "training-aws"
}
```

## Configure Terraform variables
```
export TF_VAR_name="aws-training"
```
## Init
```
terraform init
```

## Plan
```
terraform plan
```

## Apply
```
terraform apply -auto-approve
```

## Destroy
```
terraform destroy -auto-approve
```

## Links

### Terraform
https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html

### Cloud Formation
https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html

### Canned ACL
https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl

### Specifying grantee
https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#specifying-grantee

### Static Website
https://medium.com/@P_Lessing/single-page-apps-on-aws-part-1-hosting-a-website-on-s3-3c9871f126

### Content disposition
https://stackoverflow.com/questions/18296875/amazon-s3-downloads-index-html-instead-of-serving

### Bucket policies
https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteAccessPermissionsReqd.html
https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html

### Cross account access s3
https://aws.amazon.com/premiumsupport/knowledge-center/cross-account-access-s3/

### Cache control
https://stackoverflow.com/questions/10435334/set-cache-control-for-entire-s3-bucket-automatically-using-bucket-policies

### Private bucket
https://docs.aws.amazon.com/AmazonS3/latest/user-guide/block-public-access.html
https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html

### S3 bucket public access
https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html

### Bucket security
https://github.com/sa7mon/S3Scanner

### Static Website
https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-s3.html#scenario-s3-bucket-website
