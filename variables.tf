#-----root/variables.tf-----
variable "region" {
    description = "Define the region name"
    type        = string
}

#-----storage variables-----
variable "bucket_name" {}
variable "s3_tags" {}

#-----networking variables-----
variable "vpc_cidr" {}
variable "vpc_tags" {}
variable "igw_tags" {}
variable "public_rt_tags" {}
variable "private_rt_tags" {}
variable "public_cidrs" {}
variable "public_subnet_tags" {}
variable "public_sg_allowed_ip" {}
variable "public_sg_tags" {}

#-----computing variables-----
variable "keyname" {}
variable "public_key_path" {}
variable "instance_count" {}
variable "instance_type" {}
variable "instance_tags" {}