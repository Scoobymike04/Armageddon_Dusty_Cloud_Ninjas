/*
#1 Tokyo (default)
provider "aws" {
    region = "ap-northeast-1"
}
*/
#5 Australia
provider "aws" {
  alias = "australia"
  region = "ap-southeast-2"
}
/*
#2 New York

provider "aws" {
  alias = "newyork"
  region = "us-east-1"
}

#3 London

provider "aws" {
  alias = "london"
  region = "eu-west-2"
}

#4 Sao Paolo

provider "aws" {
  alias = "saopaolo"
  region = "sa-east-1"
}
*/
#6 Hong Kong

provider "aws" {
  alias = "hongkong"
  region = "ap-east-1"
}
#7 California

provider "aws" {
  alias = "california"
  region = "us-west-1"
}

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
                version = "~> 3.0"    
          }
    }
}
