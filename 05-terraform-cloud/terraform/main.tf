terraform {
  required_version = "~> 0.14.7"
  backend "remote" {}
}

provider "aws" {
  region  = var.region
  version = "3.35.0"
}