variable "vpc_id" {
  description = "VPC ID where security groups will be created"
  type        = string
}

variable "env_prefix" {
  description = "Prefix for resource names (e.g., lab2)"
  type        = string
}

variable "my_ip" {
  description = "Your public IP address in CIDR format (e.g., 203.0.113.25/32)"
  type        = string
}
