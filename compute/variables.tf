#-----compute/variables.tf-----

variable "keyname" {
  description = "Define the name of the instance's key"
  type        = string
}

variable "public_key_path" {
  description = "Define the path where the public key is located"
  type        = string
}

variable "subnet_ips" {
  description = "Define the subnet ip addresses of the subnets"
  type        = list
}

variable "instance_count" {
  description = "Define the numbers of instances to be created"
  type        = string
  default     = 1
}

variable "instance_type" {
  description = "Define the the type of instance to be created"
  type        = string
}

variable "security_group" {
  description = "Define the name of the security group to be used by the instances"
  type        = string
}

variable "subnets" {
  description = "Define the list of subnet"
  type        = list
}

variable "instance_tags" {
  description = "The tags of the instances"
  type        = map(string)
}
