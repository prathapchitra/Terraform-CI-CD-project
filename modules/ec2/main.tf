resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name        = var.instance_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
