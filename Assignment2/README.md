# Assignment 2 – Multi-Tier Web Infrastructure on AWS

## Project Overview
This project demonstrates the design and deployment of a secure, highly available multi-tier web infrastructure on Amazon Web Services (AWS) using Terraform for Infrastructure as Code and Nginx as a reverse proxy and load balancer.

The infrastructure is fully automated using reusable Terraform modules and follows cloud best practices including HTTPS enforcement, load balancing, caching, restricted access, and high availability through a backup server.

---

## Architecture Overview

### Architecture Diagram

![Screenshot of Assignment](Assignment2/screenshots/Architecture Diagram.png)


---

## Components Description

### Nginx Server
- Acts as the public entry point
- Handles HTTPS connections
- Redirects HTTP to HTTPS
- Load balances traffic between backend servers
- Implements caching and security headers
- Routes traffic to a backup server on failure

### Backend Web Servers
- Three Apache web servers:
  - `web-1` and `web-2` (Primary)
  - `web-3` (Backup)
- Display dynamic instance information
- Accessible only through the Nginx server

---

## Prerequisites

### Required Tools
- AWS Account
- Terraform (v1.x or later)
- AWS CLI
- SSH client
- Git

### AWS Credentials Setup
```bash
aws configure


SSH Key Setup

ssh-keygen -t rsa -b 4096 -f ~/.ssh/terraform-key

Deployment Instructions

Step-by-Step Guide

Clone the repository:

git clone <repository-url>

cd assignment-2

Initialize Terraform

terraform init

Validate configuration

terraform validate

Review execution plan

terraform plan


Apply deployment

terraform apply

Variable Configuration

Configure values in terraform.tfvars

Includes CIDR blocks, region, instance type, and key pair

Variables include validation and descriptions


Configuration Guide

Updating Backend IPs

After deployment:

SSH into the Nginx server

ssh ec2-user@<nginx-public-ip>


Edit Nginx configuration

sudo vim /etc/nginx/nginx.conf


Update backend IPs:

upstream backend_servers {

    server <web-1-private-ip>:80;

    server <web-2-private-ip>:80;

    server <web-3-private-ip>:80 backup;
}


Restart Nginx

sudo systemctl restart nginx


Nginx Configuration Explanation

Upstream block: Defines primary and backup backend servers

SSL/TLS: Self-signed certificate for secure communication

Caching: Improves performance and reduces backend load

Security Headers: Protect against common web vulnerabilities

Redirects: Enforces HTTPS access

Testing Procedures

Refresh page multiple times to verify load balancing

Check response headers for X-Cache-Status

Stop primary servers to test backup server activation

Verify HTTPS redirection and security headers

Architecture Details


Network Topology

Custom VPC

Public subnet

Internet Gateway

Only Nginx exposed to the internet

Security Groups Explanation

Nginx Security Group

Allow ports 80 and 443 from anywhere

SSH restricted to administrator IP

Backend Security Group

Allow HTTP traffic only from Nginx

No direct internet access

Load Balancing Strategy

Round-robin load balancing between primary servers

Backup server activated only when primaries fail


Common Issues and Solutions

| Issue                      | Solution                           |
| -------------------------- | ---------------------------------- |
| No traffic to backend      | Verify backend IPs in Nginx config |
| HTTPS not working          | Check SSL certificate paths        |
| Load balancing not visible | Reload page multiple times         |
| Backend unreachable        | Check security group rules         |


Log Locations

Nginx Access Log: /var/log/nginx/access.log

Nginx Error Log: /var/log/nginx/error.log

Apache Log: /var/log/httpd/

Debug Commands

nginx -t

systemctl status nginx

sudo tail -f /var/log/nginx/error.log

Cleanup

Destroy all resources after completion:

terraform destroy

Then Verify resource termination via AWS Console.
