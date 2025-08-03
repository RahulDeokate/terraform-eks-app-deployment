resource "aws_eks_node_group" "workers" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.cluster_name}-nodegroup"
  node_role_arn   = var.node_role_arn

  subnet_ids = [
    var.subnet1_id,
    var.subnet2_id
  ]

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_size
    min_size     = var.min_size
  }

  instance_types  = var.instance_types
  ami_type        = "AL2_x86_64"
  disk_size       = 10
  capacity_type   = "ON_DEMAND"

  # Optional: Use only if aws_eks_cluster is defined in this module
  # depends_on = [aws_eks_cluster.eks]
}
