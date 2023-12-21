variable "name_prefix" {
  type    = string
  default = "lwy"
}

variable "environment" {
  type    = string
  default = "development"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0582d885a3bc6c51b"
}

variable "public_subnet_id" {
  type    = string
  default = "subnet-0e89cf792598a2ba4"
}

variable "ssh_key_name" {
  type    = string
  default = "wy-ssh"
}
