output "vpc_id" {
  description = "Value of VPC ID"
  value       = aws_vpc.vpc.id
}

output "subnet1_id" {
  description = "Value of Subnet 1 ID"
  value       = aws_subnet.subnet_1.id
}

output "subnet2_id" {
  description = "Value of Subnet 2 ID"
  value       = aws_subnet.subnet_2.id
}
