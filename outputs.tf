output "app_sg_id" {
  description = "ID of the application security group"
  value       = aws_security_group.app_sg.id
}
output "vpc_id" {
  description = "ID of the provisioned VPC"
  value       = aws_vpc.main.id
}

output "bastion_sg_id" {
  description = "ID of the bastion security group"
  value       = aws_security_group.bastion_sg.id
}
