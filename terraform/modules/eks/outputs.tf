output "cluster_name" {
  description = "Value of the EKS cluster name"
  value       = aws_eks_cluster.eks.name
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint URL"
  value       = aws_eks_cluster.eks.endpoint
}

output "cluster_ca" {
  description = "EKS cluster certificate authority"
  value       = aws_eks_cluster.eks.certificate_authority[0].data
}
