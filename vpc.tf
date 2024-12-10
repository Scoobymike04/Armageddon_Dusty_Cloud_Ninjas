resource "aws_vpc" "tokyo-vpc" {
  provider   = aws.Tokyo
  cidr_block = "10.20.0.0/16"
}

resource "aws_vpc" "new-york-vpc" {
  provider   = aws.New-York
  cidr_block = "10.26.0.0/16"
}

resource "aws_vpc" "london-vpc" {
  provider   = aws.London
  cidr_block = "10.22.0.0/16"
}

resource "aws_vpc" "sao-paulo-vpc" {
  provider   = aws.Sao-Paulo
  cidr_block = "10.23.0.0/16"
}

resource "aws_vpc" "australia-vpc" {
  provider   = aws.Australia
  cidr_block = "10.25.0.0/16"
}
resource "aws_vpc" "hong-kong-vpc" {
  provider   = aws.Hong-Kong
  cidr_block = "10.21.0.0/16"
}
resource "aws_vpc" "california-vpc" {
  provider   = aws.California
  cidr_block = "10.24.0.0/16"
}

