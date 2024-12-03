provider "aws" {
  region = "eu-west-2"
  alias = "london"
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