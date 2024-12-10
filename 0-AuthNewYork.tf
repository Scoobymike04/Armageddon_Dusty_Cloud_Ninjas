provider "aws" {
  region = "us-east-1"
  alias  = "newyork"
}

/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
*/
