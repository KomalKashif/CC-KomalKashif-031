# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$", var.vpc_cidr_block))
    error_message = "vpc_cidr_block must be a valid CIDR block (e.g., 10.0.0.0/16)"
  }
}

# Subnet CIDR Block
variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.10.0/24"

  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$", var.subnet_cidr_block))
    error_message = "subnet_cidr_block must be a valid CIDR block (e.g., 10.0.10.0/24)"
  }
}

# Availability Zone
variable "availability_zone" {
  description = "AWS Availability Zone for resources"
  type        = string
  default     = "us-east-1a"
}

# Environment Prefix
variable "env_prefix" {
  description = "Environment prefix (e.g., prod, dev)"
  type        = string
  default     = "prod"
}

# Instance Type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# Public Key Path
variable "public_key" {
  description = "Path to SSH public key"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

# Private Key Path
variable "private_key" {
  description = "Path to SSH private key"
  type        = string
  default     = "~/.ssh/id_ed25519"
}

# Backend Servers List
variable "backend_servers" {
  description = "List of backend servers with name and script path"
  type = list(object({
    name        = string
    script_path = string
  }))
  default = [
    {
      name        = "web-1"
      script_path = "./scripts/apache-setup.sh"
    },
    {
      name        = "web-2"
      script_path = "./scripts/apache-setup.sh"
    },
    {
      name        = "web-3"
      script_path = "./scripts/apache-setup.sh"
    }
  ]
}

# AMI ID
variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the EC2 instance"
  type        = string
  default     = ""
}
