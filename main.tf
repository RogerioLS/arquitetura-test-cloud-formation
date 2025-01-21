provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}

variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  default     = "example-bucket-terraform"
}
