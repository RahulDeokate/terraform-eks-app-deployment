variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
}

variable "subnet1_id" {
  description = "ID of the subnet 1"
  type        = string
}

variable "subnet2_id" {
  description = "ID of the subnet 2"
  type        = string
}

variable "node_role_arn" {
  description = "IAM role ARN for EC2 nodes"
  type        = string
}

variable "desired_capacity" {
  description = "Desired capacity of the nodes"
  type        = number
  default     = 1
}

variable "min_size" {
  description = "Minimum capacity
