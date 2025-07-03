📌 Project Overview
This project demonstrates how to securely provision infrastructure in AWS using Terraform. While the VPC and EC2 instances are managed separately, this setup focuses on:
- Defining reusable Security Groups
- Enforcing least privilege access rules (e.g., SSH via Bastion only)
- Applying IaC best practices with .tfvars, modular files, and Git version control
---
🚀 Step-by-Step: What We Did
- Created a local folder aws-secure-vm-provisioning for Terraform code
- Defined resources in main.tf, including a Security Group for:
- SSH from a Bastion host only
- HTTP access from a specific app subnet
- Declared input variables in variables.tf for flexibility
- Created a terraform.tfvars file to supply values like:
- vpc_id
- bastion_sg_id
- app_subnet_cidr
- Added outputs.tf to expose key values such as the Security Group ID
- Initialized Git, committed code, and linked to GitHub
- Handled a large .terraform binary issue using .gitignore and BFG Repo-Cleaner
- Pushed clean and trackable code to GitHub with reusable logic
---


