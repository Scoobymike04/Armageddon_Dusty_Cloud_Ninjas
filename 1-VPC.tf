resource "aws_vpc" "australia" {
  cidr_block = "10.24.0.0/16"

  tags = {
    Region = "Sydney"

  }
}
resource "aws_vpc" "california" {
  cidr_block = "10.26.0.0/16"

  tags = {
    Region = "California"

  }
}
resource "aws_vpc" "hongkong" {
  cidr_block = "10.25.0.0/16"

  tags = {
    Region = "Hong Kong"

  }
}