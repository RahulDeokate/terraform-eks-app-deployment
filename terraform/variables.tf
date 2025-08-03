variable "vpc_cidr" {
  description = "Value for VPC CIDR"
}

variable "subnet1_cidr" {
  description = "Value for Subnet 1 CIDR"
}

variable "subnet2_cidr" {
  description = "Value for Subnet 2 CIDR"
}

variable "availability_zone_subnet1" {
  description = "Value for availability zone of Subnet 1"
}

variable "availability_zone_subnet2" {
  description = "Value for availability zone of Subnet 2"
}

variable "cluster_name" {
  description = "Value of the EKS cluster name"
}
