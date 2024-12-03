resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Tokyoapp1.id

  tags = {
    Name    = "Tokyoapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
