# AWS Infrastructure Provisioning with Terraform

This project provisions AWS infrastructure using reusable Terraform modules.

## Infrastructure

- EC2 instances
- S3 bucket

## Project Structure

```text
terraform/
├── main.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
└── modules/
    ├── ec2/
    └── s3/
