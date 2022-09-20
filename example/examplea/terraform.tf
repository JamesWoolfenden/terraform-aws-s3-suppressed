terraform {
  required_providers {
    aws = {
      version = "4.31.0"
      source  = "hashicorp/aws"
    }

    template = {
      source  = "hashicorp/template"
      version = "2.1"
    }
  }
  required_version = ">=0.14.8"
}
