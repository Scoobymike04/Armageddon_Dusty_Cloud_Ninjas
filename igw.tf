resource "aws_internet_gateway" "tokyo" {
  provider = aws.Tokyo
  vpc_id   = aws_vpc.tokyo-vpc.id
}

resource "aws_internet_gateway" "new_york" {
  provider = aws.New-York
  vpc_id   = aws_vpc.new-york-vpc.id
}
resource "aws_internet_gateway" "london" {
  provider = aws.London
  vpc_id   = aws_vpc.london-vpc.id
}

resource "aws_internet_gateway" "sao-paulo" {
  provider = aws.Sao-Paulo
  vpc_id   = aws_vpc.sao-paulo-vpc.id
}
resource "aws_internet_gateway" "australia" {
  provider = aws.Australia
  vpc_id   = aws_vpc.australia-vpc.id
}

resource "aws_internet_gateway" "hong-kong" {
  provider = aws.Hong-Kong
  vpc_id   = aws_vpc.hong-kong-vpc.id
}
resource "aws_internet_gateway" "california" {
  provider = aws.California
  vpc_id   = aws_vpc.california-vpc.id
}




