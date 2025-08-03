output "nodegroup_name" {
  description = "Node group name"
  value       = aws_eks_node_group.workers.node_group_name
}
