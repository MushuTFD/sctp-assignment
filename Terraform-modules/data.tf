data "aws_ami" "amazon_linux" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_subnets" "public"{
    filter {
        name = "vpc-id"
        values = ["vpc-0582d885a3bc6c51b"] 
    }
    filter {
      name = "tag:Name"
      values = ["*-db-*"]
    }
}