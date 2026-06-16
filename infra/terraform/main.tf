module "vpc" {
  source     = "./modules/vpc"
  aws_region = var.aws_region
}

module "ecr" {
  source = "./modules/ecr"
}

module "iam" {
  source = "./modules/iam"
}