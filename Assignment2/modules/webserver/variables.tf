variable "env_prefix" {
  description = "Environment prefix for naming resources"
  type        = string
}

variable "instance_name" {
  description = "Base name of the instance"
  type        = string
}

variable "instance_suffix" {
  description = "Suffix for instance (e.g. web-1, web-2)"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for EC2"
  type        = string
}

variable "public_key" {
  description = "Public key for SSH access"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "script_path" {
  description = "Path to Apache/Nginx setup script"
  type        = string
}

variable "common_tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
}

