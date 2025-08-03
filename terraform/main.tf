module "vpc" {
  source                     = "./modules/vpc"
  vpc_cidr                   = var.vpc_cidr
  subnet1_cidr               = var.subnet1_cidr
  subnet2_cidr               = var.subnet2_cidr
  availability_zone_subnet1 = var.availability_zone_subnet1
  availability_zone_subnet2 = var.availability_zone_subnet2
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source           = "./modules/eks"
  cluster_name     = var.cluster_name
  vpc_id           = module.vpc.vpc_id
  subnet1_id       = module.vpc.subnet1_id
  subnet2_id       = module.vpc.subnet2_id
  cluster_role_arn = module.iam.cluster_role_arn
}

module "nodegroup" {
  source           = "./modules/nodegroup"
  cluster_name     = module.eks.cluster_name
  subnet1_id       = module.vpc.subnet1_id
  subnet2_id       = module.vpc.subnet2_id
  node_role_arn    = module.iam.node_role_arn
  desired_capacity = 1
  min_size         = 1
  max_size         = 1
  instance_types   = ["t2.medium"]
}
