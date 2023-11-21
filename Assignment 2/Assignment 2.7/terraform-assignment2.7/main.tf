resource "aws_instance" "web" {
  ami                         = "ami-02453f5468b897e31"
  instance_type               = "t2.micro"
  key_name                    = ""
  subnet_id                   = "subnet-0a88fa20994f4867d"
  associate_public_ip_address = true
  security_groups             = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "wy-2.7-assignment"
  }
}
resource "aws_security_group" "allow_ssh" {
  name        = "weiyangSSHSecurityGroup"
  description = "allow SSH from my ip"
  vpc_id      = "vpc-031c584a3aeaf8c5f"
  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["61.8.232.254/32"]
  }
  tags = {
    Name = "weiyangSSHSecurityGroupSSHSecurityGroup"
  }
}