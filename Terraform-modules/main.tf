module "sshinstances" {
  source = "./modules/sshinstances"

  name_prefix        = var.name_prefix
  environment        = var.environment
  vpc_id             = var.vpc_id
  public_subnet_id   = var.public_subnet_id
  ssh_key_name       = var.ssh_key_name

  ssh_instance_ami_id = data.aws_ami.amazon_linux.id
  ssh_instance_count = 1
}

resource "aws_instance" "web" {
  count                  = 1
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.allow_web.id]

  tags = {
    Name        = "${var.name_prefix}-web-${count.index}"
    Environment = var.environment
  }
}