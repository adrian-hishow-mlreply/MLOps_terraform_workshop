terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         	   = "terraform-workshop-mlreply"
    key              	   = "${var.user_name}_state/terraform.tfstate"
    region         	   = var.aws_region
  }
}

