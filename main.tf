terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
}

module "server" {
 source = "hashicorp/aws"
      version = "3.72.0"
  num_webs     = var.num_webs
  identity     = var.identity
  ami          = var.ami
  ingress_cidr = var.ingress_cidr
  public_key   = var.public_key
  private_key  = var.private_key
}

