terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
  backend "s3" {
    bucket = "sctp-ce4-tfstate-bucket"
    key    = "tf-301-lwylearn.tfstate" # change
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
  # access_key = ""
  # secret_key = ""
}
