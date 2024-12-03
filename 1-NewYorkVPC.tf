
resource "aws_vpc" "NewYork" {
  cidr_block = "10.21.0.0/16"

  tags = {
    Name = "NewYork"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
