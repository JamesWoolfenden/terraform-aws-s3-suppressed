terraform {
  backend "remote" {
    organization = "Wolf"

    workspaces {
      name = "terraform-aws-s3-examplea"
    }
  }


  required_providers {


    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
  }
  required_version = "0.14.8"
}
