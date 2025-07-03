variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
}

variable "bastion_sg_id" {
  description = "Security Group ID for the Bastion host"
  type        = string
}

variable "app_subnet_cidr" {
  description = "CIDR block of the private app subnet"
  type        = string
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "app-sg"
}
