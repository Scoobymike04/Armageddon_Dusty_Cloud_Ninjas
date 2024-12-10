resource "aws_eip" "tokyo" {
  provider = aws.Tokyo
  vpc      = true
}

resource "aws_nat_gateway" "tokyo" {
  provider      = aws.Tokyo
  allocation_id = aws_eip.tokyo.id
  subnet_id     = aws_subnet.public-ap-northeast-1a.id
  depends_on    = [aws_internet_gateway.tokyo]
}

resource "aws_eip" "new_york" {
  provider = aws.New-York
  vpc      = true
}

resource "aws_nat_gateway" "new_york" {
  provider      = aws.New-York
  allocation_id = aws_eip.new_york.id
  subnet_id     = aws_subnet.public-us-east-1a.id
  depends_on    = [aws_internet_gateway.new_york]
}

resource "aws_eip" "london" {
  provider = aws.London
  vpc      = true
}

resource "aws_nat_gateway" "london" {
  provider      = aws.London
  allocation_id = aws_eip.london.id
  subnet_id     = aws_subnet.public-eu-west-2a.id
  depends_on    = [aws_internet_gateway.london]
}

resource "aws_eip" "sao_paulo" {
  provider = aws.Sao-Paulo
  vpc      = true
}

resource "aws_nat_gateway" "sao_paulo" {
  provider      = aws.Sao-Paulo
  allocation_id = aws_eip.sao_paulo.id
  subnet_id     = aws_subnet.public-sa-east-1a.id
  depends_on    = [aws_internet_gateway.sao-paulo]
}

resource "aws_eip" "australia" {
  provider = aws.Australia
  vpc      = true
}

resource "aws_nat_gateway" "australia" {
  provider      = aws.Australia
  allocation_id = aws_eip.australia.id
  subnet_id     = aws_subnet.public-ap-southeast-2a.id
  depends_on    = [aws_internet_gateway.australia]
}

resource "aws_eip" "hong_kong" {
  provider = aws.Hong-Kong
  vpc      = true
}

resource "aws_nat_gateway" "hong_kong" {
  provider      = aws.Hong-Kong
  allocation_id = aws_eip.hong_kong.id
  subnet_id     = aws_subnet.public-ap-east-1a.id
  depends_on    = [aws_internet_gateway.hong-kong]
}
resource "aws_eip" "california" {
  provider = aws.California
  vpc      = true
}

resource "aws_nat_gateway" "california" {
  provider      = aws.California
  allocation_id = aws_eip.california.id
  subnet_id     = aws_subnet.public-us-west-1c.id
  depends_on    = [aws_internet_gateway.california]
}

# Tokyo NAT

