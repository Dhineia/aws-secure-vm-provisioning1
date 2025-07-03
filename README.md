📌 Project Overview
This project demonstrates how to securely provision infrastructure in AWS using Terraform. While the VPC and EC2 instances are managed separately, this setup focuses on:
- Defining reusable Security Groups
- Enforcing least privilege access rules (e.g., SSH via Bastion only)
- Applying IaC best practices with .tfvars, modular files, and Git version control

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

🗂️ File Explanations
| File | Purpose | 
| main.tf | Core Terraform config. Defines the AWS Security Group, allowing secure access to EC2 instances (SSH from Bastion, HTTP from app subnet). Built to be reusable across multiple VPCs by referencing variables. | 
| variables.tf | Declares all input variables like VPC ID, Bastion SG ID, and subnet CIDRs—making the config modular and environment-agnostic. | 
| terraform.tfvars | Supplies actual values for the declared variables. This keeps main.tf reusable while customizing deployments per environment. | 
| outputs.tf | Provides the Security Group ID as an output so other modules or teams can reference it after deployment. Useful for chaining resources. | 



💡 Why No EC2 or VPC in main.tf?
This module focuses only on securing VM provisioning, not deploying the VMs or creating the VPC itself. It assumes the VPC and EC2 exist or are created by another module. This approach:
- Promotes modular architecture
- Ensures reusability across multiple VPCs/environments
- Makes it easier to plug into larger infrastructure stacks
