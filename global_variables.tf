variable "aws_resource_prefix" {
  type = map(string)
  default = {
    "company_name" = "brlink"
    "client_name"  = "elgin"
  }
}

variable "repository_branch" {
  type    = string
}
