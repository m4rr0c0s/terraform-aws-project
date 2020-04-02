#-----networking/outputs.tf

output "public_subnets" {
  value = aws_subnet.public_subnet.*.id
}

output "public_sg" {
  value = aws_security_group.public_sg.id
}

output "subnet_ips" {
  value = aws_subnet.public_subnet.*.cidr_block
}

output "ingress_port_mapping" {
  value = {
    for ingress in aws_security_group.public_sg.ingress:
    format("From %d", ingress.from_port) => format("To %d", ingress.to_port)
  }
}
