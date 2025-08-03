output "cluster_role_arn" {
  description = "Value of cluster role ARN"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "node_role_arn" {
  description = "Value of node role ARN"
  value       = aws_iam_role.eks_node_role.arn
}
