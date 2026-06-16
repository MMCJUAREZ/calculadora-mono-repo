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

module "eks" {
  source             = "./modules/eks"
  cluster_name       = "calculadora-eks"
  vpc_id             = module.vpc.vpc_id             
  private_subnet_ids = module.vpc.private_subnets
}