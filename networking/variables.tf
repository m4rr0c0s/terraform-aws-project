#-----networking/variables.tf-----

variable "vpc_cidr" {
    description = "The cidr block of the VPC"
    type        = string
}

variable "vpc_tags" {
    description = "The tags of the VPC"
    type        = map(string)
}

variable "igw_tags" {
    description = "The tags of the Internet Gateway"
    type        = map(string)
}

variable "public_rt_tags" {
    description = "The tags of the Public Route Table"
    type        = map(string)
}

variable "private_rt_tags" {
    description = "The tags of the Private Route Table"
    type        = map(string)
}

variable "public_cidrs" {
    description = "The list of cidrs to create subnets"
    type        = list
}

variable "public_subnet_tags" {
    description = "The tags of the Publics Subnet"
    type        = list
}

variable "public_sg_allowed_ip" {
    description = "The allowed ip address"
    type        = list
}

variable "public_sg_tags" {
    description = "The tags of the public security group"
    type        = map(string)
}
