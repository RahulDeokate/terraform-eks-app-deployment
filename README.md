# 🚀 AWS EKS Cluster with Modular Terraform

This project automates the provisioning of an Amazon EKS (Elastic Kubernetes Service) cluster on AWS using a **modular Terraform architecture**. It separates infrastructure into reusable modules for better organization, scalability, and maintenance.

---

## 📁 Project Structure
terraform-eks-app-deployment/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── backend.tf
├── outputs.tf
├── modules/
│ ├── vpc/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ ├── iam/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ ├── eks/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ └── nodegroup/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf

## ✅ Features

- 🔐 Secure IAM roles for EKS cluster and nodes
- 🌐 VPC with two public subnets in different Availability Zones
- ☸️ Amazon EKS cluster setup
- 🧱 Managed node group with auto-scaling configuration
- 💾 Remote backend using S3 & DynamoDB
- 🔁 Modular design for scalability and reusability

---

## ⚙️ Prerequisites

Before you begin, make sure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) v1.0+
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- An AWS account with programmatic access
- An S3 bucket and DynamoDB table created for Terraform remote backend

---

## 🔧 Usage

### 1. Clone the Repository


git clone https://github.com/your-username/terraform-eks-app-deployment.git
cd terraform-eks-app-deployment
2. Update terraform.tfvars
Fill in values to customize your infrastructure:


