# Create a unique key pair per instance
resource "aws_key_pair" "key" {
  key_name   = "${var.env_prefix}-${var.instance_name}-${var.instance_suffix}-key"
  public_key = var.public_key
}

# Launch EC2 instance
resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  key_name                    = aws_key_pair.key.key_name
  associate_public_ip_address = true

  # Run Apache setup script
  user_data_base64 = base64encode(file(var.script_path))

  tags = merge(var.common_tags, {
    Name = "${var.env_prefix}-${var.instance_name}-${var.instance_suffix}"
  })
}

