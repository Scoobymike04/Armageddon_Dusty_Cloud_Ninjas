resource "aws_eip" "nat_tok" {
  vpc = true

  tags = {
    Name = "nat_tok"
  }
}

resource "aws_nat_gateway" "nat_tok" {
  allocation_id = aws_eip.nat_tok.id
  subnet_id     = aws_subnet.public-ap-northeast-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw_tok]
}
