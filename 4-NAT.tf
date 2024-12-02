

#Australia //////////////////////////
resource "aws_eip" "nat_aus" {
  vpc = true

  tags = {
    Name = "nat_aus"
  }
}

resource "aws_nat_gateway" "nat_aus" {
  allocation_id = aws_eip.nat_aus.id
  subnet_id     = aws_subnet.public-ap-southeast-2a.id

  tags = {
    Name = "Australia"
    resource = "nat_aus"
  }

  depends_on = [aws_internet_gateway.igw_aus]
}
#California//////////////////////////
resource "aws_eip" "nat_cal" {
  vpc = true

  tags = {
    Name = "nat_cal"
  }
}

resource "aws_nat_gateway" "nat_cal" {
  allocation_id = aws_eip.nat_cal.id
  subnet_id     = aws_subnet.public-us-west-1a.id

  tags = {
    Name = "California"
    resource = "nat_cal"
  }

  depends_on = [aws_internet_gateway.igw_cal]
}
#Hong Kong//////////////////////////
resource "aws_eip" "nat_hon" {
  vpc = true

  tags = {
    Name = "nat_hon"
  }
}

resource "aws_nat_gateway" "nat_hon" {
  allocation_id = aws_eip.nat_hon.id
  subnet_id     = aws_subnet.public-ap-east-1a.id

  tags = {
    Name = "Hong Kong"
    resource = "nat_hon"
  }

  depends_on = [aws_internet_gateway.igw_hon]
}