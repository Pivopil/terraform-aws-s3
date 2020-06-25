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
export TF_VAR_name="aws-trainig"
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

### Private bucket
https://docs.aws.amazon.com/AmazonS3/latest/user-guide/block-public-access.html
https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html


