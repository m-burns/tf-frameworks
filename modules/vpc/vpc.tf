resource "aws_vpc" "main" {
    cidr_block = var.cidr_block
    instance_tenancy = var.instance_tenancy
    enable_dns_support = var.enable_dns_support
    enable_dns_hostnames = var.enable_dns_hostnames
    enable_classiclink = var.enable_classiclink
    enable_classiclink_dns_support = var.enable_classiclink_dns_support
    assign_generated_ipv6_cidr_block = var.enable_ipv6

    tags = {
      Name = var.vpc_name_tag
    }
}

output "vpc_arn" {
  value = aws_vpc.main.arn
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr_block" {
  value = aws_vpc.main.cidr_block
}

output "vpc_instance_tenancy" {
  value = aws_vpc.main.instance_tenancy
}

output "vpc_enable_dns_support" {
  value = aws_vpc.main.enable_dns_hostnames
}

output "vpc_enable_dns_hostnames" {
  value = aws_vpc.main.enable_dns_hostnames
}

output "vpc_enable_classiclink" {
  value = aws_vpc.main.enable_classiclink
}

output "vpc_main_route_table_id" {
  value = aws_vpc.main.main_route_table_id
}

output "vpc_default_network_acl_id" {
  value = aws_vpc.main.default_network_acl_id
}

output "vpc_default_security_group_id" {
  value = aws_vpc.main.default_security_group_id
}

output "vpc_default_route_table_id" {
  value = aws_vpc.main.default_route_table_id
}

output "vpc_ipv6_association_id" {
  value = aws_vpc.main.ipv6_association_id
}

output "vpc_ipv6_cidr_block" {
  value = aws_vpc.main.ipv6_cidr_block
}

output "vpc_owner_id" {
  value = aws_vpc.main.owner_id
}
