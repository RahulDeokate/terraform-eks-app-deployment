# VPC Outputs
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}
 
output "subnet1_id" {
  description = "The ID of Subnet 1"
  value       = module.vpc.subnet1_id
}
 
output "subnet2_id" {
  description = "The ID of Subnet 2"
  value       = module.vpc.subnet2_id
}
 
# IAM Role Outputs
output "cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS control plane"
  value       = module.iam.cluster_role_arn
}
 
output "node_role_arn" {
  description = "The ARN of the IAM role for EKS worker nodes"
  value       = module.iam.node_role_arn
}
 
# EKS Cluster Outputs
output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_name
}
 
output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}
 
output "eks_cluster_ca" {
  description = "The certificate authority data for the cluster"
  value       = module.eks.cluster_ca
}
 
# Node Group Outputs
output "nodegroup_name" {
  description = "The name of the EKS node group"
  value       = module.nodegroup.nodegroup_name
}