provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source      = "./modules/networking"
  vpc_cidr    = var.vpc_cidr_block
  subnet_cidr = var.subnet_cidr_block
  env_prefix  = var.env_prefix
}

module "security" {
  source     = "./modules/security"
  vpc_id     = module.networking.vpc_id
  env_prefix = var.env_prefix
  my_ip      = local.my_ip
}

module "nginx_server" {
  source            = "./modules/webserver"
  env_prefix        = var.env_prefix
  instance_name     = "nginx-proxy"
  instance_type     = var.instance_type
  subnet_id         = module.networking.subnet_id
  security_group_id = module.security.nginx_sg_id
  public_key        = file(var.public_key)
  script_path       = "./scripts/nginx-setup.sh"
  instance_suffix   = "nginx"
  ami_id            = var.ami_id
  common_tags       = local.common_tags
}

module "backend_servers" {
  for_each = { for s in var.backend_servers : s.name => s }

  source            = "./modules/webserver"
  env_prefix        = var.env_prefix
  instance_name     = "backend"
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  subnet_id         = module.networking.subnet_id
  security_group_id = module.security.backend_sg_id
  public_key        = file(var.public_key)
  script_path       = each.value.script_path
  instance_suffix   = each.value.name
  common_tags       = local.common_tags
}

output "nginx_public_ip" {
  value = module.nginx_server.public_ip
}

output "backend_public_ips" {
  value = { for k, v in module.backend_servers : k => v.public_ip }
}

