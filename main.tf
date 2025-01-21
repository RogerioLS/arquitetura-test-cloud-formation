data "aws_caller_identity" "current" {}
module "ai_module" {
  source = "./chatbot-module/infra/"
  repository_branch   = var.repository_branch
  aws_resource_prefix = var.aws_resource_prefix
}

module "api_module" {
  source = "./api-module/infra/"
  repository_branch   = var.repository_branch
  aws_resource_prefix = var.aws_resource_prefix
  ai_lambda_name = module.ai_module.ai_lambda_out
}

module "extract_images_trigger" {
  source = "./extract-images-trigger/infra"
  repository_branch   = var.repository_branch
  aws_resource_prefix = var.aws_resource_prefix
  lambda_role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/brlink-elgin-ai-lambda-${var.repository_branch}"
}
