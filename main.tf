resource "aws_security_group" "app_sg" {
  name        = var.sg_name
  description = "Allow SSH from Bastion only + App traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "SSH access from Bastion only"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups = [var.bastion_sg_id]
  }

  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.2.0/24"]  # Only from App subnet or LB
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]    # Allow all outbound traffic (typical for app tier)
  }

  tags = {
    Name = var.sg_name
  }
}
