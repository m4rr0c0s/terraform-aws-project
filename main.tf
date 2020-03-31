#-----root/main.tf-----
terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
    profile = "default"
    region  = var.region
}

# Deploy storage resource
module "storage" {
  source = "./storage"
  bucket_name = var.bucket_name
  s3_tags = var.s3_tags
}

# Deploy networking resource
module "networking" {
  source = "./networking"
  vpc_cidr             = var.vpc_cidr
  vpc_tags             = var.vpc_tags
  igw_tags             = var.igw_tags
  public_rt_tags       = var.public_rt_tags
  private_rt_tags      = var.private_rt_tags
  public_cidrs         = var.public_cidrs
  public_subnet_tags   = var.public_subnet_tags
  public_sg_allowed_ip = var.public_sg_allowed_ip
  public_sg_tags       = var.public_sg_tags
}

module "compute" {
  source          = "./compute"
  instance_count  = var.instance_count
  keyname         = var.keyname
  public_key_path = var.public_key_path
  instance_type   = var.instance_type
  instance_tags   = var.instance_tags
  subnets         = module.networking.public_subnets
  security_group  = module.networking.public_sg
  subnet_ips      = module.networking.subnet_ips
}
