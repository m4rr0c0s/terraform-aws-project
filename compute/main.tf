#-----compute/main.tf-----

data "aws_ami" "instance_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]  
  }
}

data "template_file" "user_data" {
  count = 2
  template = file("${path.module}/userdata.tpl")

  vars = {
    firewall_subnets = element(var.subnet_ips, count.index)
  }
}

resource "aws_key_pair" "instance_key" {
  key_name   = var.keyname
  public_key = file(var.public_key_path)
}

resource "aws_instance" "instance" {
  count                  = var.instance_count
  instance_type          = var.instance_type
  ami                    = data.aws_ami.instance_ami.id
  key_name               = aws_key_pair.instance_key.id
  vpc_security_group_ids = [var.security_group]
  subnet_id              = element(var.subnets, count.index)
  user_data              = data.template_file.user_data.*.rendered[count.index]

  tags = var.instance_tags
}
