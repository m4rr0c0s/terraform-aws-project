#-----general-----
region      = "us-east-1"

#-----storage-----
bucket_name = "marrocos-bucket"
s3_tags     = {
    Terraform   = "true"
    Environment = "dev"
}

#-----networking-----
vpc_cidr             = "10.10.0.0/16"
public_sg_allowed_ip = ["0.0.0.0/0"]

public_cidrs = [
  "10.10.0.0/24",
  "10.10.1.0/24"
]

vpc_tags = {
  Name        = "Company Marrocos"
  Terraform   = "true"
  Environment = "dev"
}

igw_tags = {
  Terraform   = "true"
  Environment = "dev"
}

public_rt_tags = {
  Name = "public_rt"
  Terraform   = "true"
  Environment = "dev"
}

private_rt_tags = {
  Name = "private_rt"
  Terraform   = "true"
  Environment = "dev"
}

public_subnet_tags = [
  {
    Name = "subnet_01"
    Terraform   = "true"
    Environment = "dev"
  },
  {
    Name = "subnet_02"
    Terraform   = "true"
    Environment = "dev"
  }
]

public_sg_tags = {
  Terraform   = "true"
  Environment = "dev"
}

#-----compute-----
keyname         = "mykey"
public_key_path = "/home/gabriel/.ssh/mykey.pub"
instance_count  = 2
instance_type   = "t2.micro"

instance_tags = {
  Terraform   = "true"
  Environment = "dev"
}