variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "subnet1_id" {
  description = "ID of subnet 1"
  type        = string
}

variable "subnet2_id" {
  description = "ID of subnet 2"
  type        = string
}

variable "node_role_arn" {
  description = "IAM role ARN for EC2 nodes"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 1
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 1
}

variable "instance_types" {
  description = "List of EC2 instance types to use for nodes"
  type        = list(string)
  default     = ["t2.medium"]
}
