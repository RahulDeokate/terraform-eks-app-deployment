output "cluster_role_arn" {
  description = "Cluster IAM role ARN"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "node_role_arn" {
  description = "Node group IAM role ARN"
  value       = aws_iam_role.eks_node_role.arn
}
