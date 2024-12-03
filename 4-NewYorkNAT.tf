resource "aws_eip" "nat_new" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat_new" {
  allocation_id = aws_eip.nat_new.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw_new]
}
