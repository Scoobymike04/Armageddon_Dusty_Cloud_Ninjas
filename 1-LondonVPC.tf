# this  makes  vpc.id which is aws_vpc.London.id
resource "aws_vpc" "London" {
  cidr_block = "10.22.0.0/16"

  tags = {
    Name = "London"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}
