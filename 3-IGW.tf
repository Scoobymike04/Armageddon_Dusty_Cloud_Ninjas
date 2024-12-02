
#Australia //////////////////////////////////////////
resource "aws_internet_gateway" "igw_aus" {
  vpc_id = aws_vpc.australia.id

  tags = {
    Name    = "australia_IG"
    location = "australia"
  }
}
# California////////////////////////////////////////////

resource "aws_internet_gateway" "igw_cal" {
  vpc_id = aws_vpc.california.id

  tags = {
    Name    = "california_IG"
    location = "california"
  }
}
# Hong Kong////////////////////////////////////////////

resource "aws_internet_gateway" "igw_hon" {
  vpc_id = aws_vpc.hongkong.id

  tags = {
    Name    = "hongkong_IG"
    location = "hongkong"
  }
}