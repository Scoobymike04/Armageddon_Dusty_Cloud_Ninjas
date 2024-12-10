resource "aws_internet_gateway" "igw_new" {
  vpc_id = aws_vpc.NewYork.id

  tags = {
    Name    = "NewYork_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
