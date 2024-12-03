resource "aws_eip" "nat_lon" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat_lon" {
  allocation_id = aws_eip.nat_lon.id
  subnet_id     = aws_subnet.public-eu-west-2a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw_lon]
}
