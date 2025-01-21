variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  default     = "example-bucket-terraform-teste"
}

variable "repository_branch" {
  description = "The branch of the repository"
}
