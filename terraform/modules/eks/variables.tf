variable "cluster_name" {
  description = "Value for cluster name"
  type        = string
}

variable "vpc_id" {
  description = "Value of VPC ID"
  type        = string
}

variable "subnet1_id" {
  description = "Value of Subnet 1 ID"
  type        = string
}

variable "subnet2_id" {
  description = "Value of Subnet 2 ID"
  type        = string
}

variable "cluster_role_arn" {
  description = "Value of cluster role ARN"
  type        = string
}
