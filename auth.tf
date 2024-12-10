# These are the providers and the regions we are using to expand Tokyo Midtown Medical Center's 
# services worldwide 
provider "aws" {
  region = "ap-northeast-1"
  alias  = "Tokyo"
}

provider "aws" {
  region = "us-east-1"
  alias  = "New-York"
}

provider "aws" {
  region = "eu-west-2"
  alias  = "London"
}

provider "aws" {
  region = "sa-east-1"
  alias  = "Sao-Paulo"
}

provider "aws" {
  region = "ap-southeast-2"
  alias  = "Australia"
}

provider "aws" {
  region = "ap-east-1"
  alias  = "Hong-Kong"
}
provider "aws" {
  region = "us-west-1"
  alias  = "California"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
