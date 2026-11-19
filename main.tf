module "dev_ec2" {
  source = "./modules/ec2"

  ami_id           = var.ami_id
  instance_type    = "t2.micro"
  key_name         = var.key_name
  instance_name    = "dev-server"
  root_volume_size = 20
  environment      = "Development"
}

module "test_ec2" {
  source = "./modules/ec2"

  ami_id           = var.ami_id
  instance_type    = "t2.small"
  key_name         = var.key_name
  instance_name    = "test-server"
  root_volume_size = 20
  environment      = "Testing"
}


module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = "prathap-terraform-demo-2026"
  environment = "Development"
}
