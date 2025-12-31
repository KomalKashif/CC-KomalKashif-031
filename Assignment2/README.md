# Assignment 2 - Multi-Tier Web Infrastructure

## Project Structure

Assignment2/
├── main.tf
├── variables.tf
├── outputs.tf
├── locals.tf
├── terraform.tfvars
├── .gitignore
├── modules/
│   ├── networking/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── security/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── webserver/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── scripts/
│   ├── nginx-setup.sh
│   └── apache-setup.sh
└── README.md


Project Overview

This project demonstrates the design and deployment of a secure, highly available multi-tier web infrastructure on Amazon Web Services (AWS) using Terraform for Infrastructure as Code and Nginx as a reverse proxy and load balancer.

The infrastructure is fully automated, modular, and follows cloud best practices including HTTPS enforcement, restricted access, load balancing, caching, and failover support.

Architecture Overview
Architecture Diagram
┌─────────────────────────────────────────────────┐
│                  Internet                       │
└─────────────────┬───────────────────────────────┘
                  │
                  │ HTTPS (443)
                  │ HTTP (80)
                  ▼
         ┌────────────────────┐
         │   Nginx Server     │
         │  (Load Balancer)   │
         │   - SSL/TLS        │
         │   - Caching        │
         │   - Reverse Proxy  │
         └────────┬───────────┘
                  │
      ┌───────────┼───────────┐
      │           │           │
      ▼           ▼           ▼
   ┌─────┐     ┌─────┐     ┌─────┐
   │Web-1│     │Web-2│     │Web-3│
   │     │     │     │     │(BKP)│
   └─────┘     └─────┘     └─────┘
   Primary     Primary     Backup

Components Description
Nginx Server

Acts as the entry point for all client requests

Handles HTTPS termination

Performs load balancing between backend servers

Implements caching, compression, and security headers

Routes traffic to a backup server when primaries fail

Backend Web Servers

Three Apache servers:

web-1 and web-2 → Primary servers

web-3 → Backup server

Serve dynamic system information

Accessible only through the Nginx server

Networking

Custom VPC

Public subnet with Internet Gateway

Routing configured for controlled external access

Prerequisites
Required Tools

AWS Account

Terraform (v1.x or later)

AWS CLI

SSH client

Git

AWS Credentials Setup
aws configure


Provide:

AWS Access Key

AWS Secret Key

Default region

Output format

SSH Key Setup
ssh-keygen -t rsa -b 4096 -f ~/.ssh/terraform-key

Deployment Instructions
Step-by-Step Guide

Clone the repository

git clone <repository-url>
cd assignment-2


Initialize Terraform

terraform init


Validate configuration

terraform validate


Review execution plan

terraform plan


Apply configuration

terraform apply

Variable Configuration

Configure CIDR blocks, instance types, and region in terraform.tfvars

Variables include validation and descriptions for safety

Terraform Commands Summary
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy

Configuration Guide
Updating Backend IPs

After deployment:

SSH into the Nginx server

ssh ec2-user@<nginx-public-ip>


Edit Nginx configuration

sudo vim /etc/nginx/nginx.conf


Update backend IPs in the upstream backend_servers block:

server <web-1-private-ip>:80;
server <web-2-private-ip>:80;
server <web-3-private-ip>:80 backup;


Restart Nginx

sudo systemctl restart nginx

Nginx Configuration Explanation

Upstream block: Defines backend servers and backup

SSL/TLS: Self-signed certificate for HTTPS

Caching: Improves response time

Security Headers: Protect against common attacks

HTTP → HTTPS Redirect: Enforces secure access

Testing Procedures

Load page multiple times to verify load balancing

Check X-Cache-Status headers

Stop primary servers to test failover

Verify HTTPS redirection and headers

Architecture Details
Network Topology

Single VPC

Public subnet

Internet Gateway

Only Nginx exposed publicly

Security Groups Explanation

Nginx SG

Allow: 80, 443 (public)

SSH only from admin IP

Backend SG

Allow HTTP only from Nginx

No public access

Load Balancing Strategy

Round-robin between primary servers

Automatic fallback to backup server

Troubleshooting
Common Issues & Solutions
Issue	Solution
Nginx not routing traffic	Check backend IPs
HTTPS not working	Verify SSL certificates
No load balancing	Confirm upstream configuration
Backend inaccessible	Check security group rules
Log Locations

Nginx access log: /var/log/nginx/access.log

Nginx error log: /var/log/nginx/error.log

Apache log: /var/log/httpd/

Debug Commands
nginx -t
systemctl status nginx
sudo tail -f /var/log/nginx/error.log