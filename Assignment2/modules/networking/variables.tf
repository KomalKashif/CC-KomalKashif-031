variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "env_prefix" {
  description = "Prefix for naming and tagging resources"
  type        = string
}
