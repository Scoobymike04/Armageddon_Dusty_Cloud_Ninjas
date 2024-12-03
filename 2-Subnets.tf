
#Australia ////////////////////////////////////////////////////
#These are   for  public
resource "aws_subnet" "public-ap-southeast-2a" {
  vpc_id                  = aws_vpc.australia.id
  cidr_block              = "10.24.1.0/24"
  availability_zone       = "ap-southeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "australia"
    Service = "australia.idaws_vpc.australia.id"
  }
}

resource "aws_subnet" "public-ap-southeast-2b" {
  vpc_id                  = aws_vpc.australia.id
  cidr_block              = "10.24.2.0/24"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-southeast-2b"
    Service = "australia.idaws_vpc.australia.id"
  }
}

#these are for private
resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id            = aws_vpc.australia.id
  cidr_block        = "10.24.11.0/24"
  availability_zone = "ap-southeast-2a"

  tags = {
    Name    = "australia"
    Service = "australia.idaws_vpc.australia.id"
  }
}
resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id            = aws_vpc.australia.id
  cidr_block        = "10.24.13.0/24"
  availability_zone = "ap-southeast-2b"

  tags = {
    Name    = "australia"
    Service = "australia.idaws_vpc.australia.id"
  }
}
#California ///////////////////////////////////////////////////
#These are for  public

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = aws_vpc.california.id
  cidr_block              = "10.26.1.0/24"
  availability_zone       = "us-west-1"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1a"
    Service = "california.idaws_vpc.california.id"
  }
}

resource "aws_subnet" "public-us-west-1c" {
  vpc_id                  = aws_vpc.california.id
  cidr_block              = "10.26.3.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1c"
    Service = "california.idaws_vpc.california.id"
  }
}

#these are for private
resource "aws_subnet" "private-us-west-1a" {
  vpc_id            = aws_vpc.california.id
  cidr_block        = "10.26.11.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name    = "private-us-west-1a"
    Service = "california.idaws_vpc.california.id"
  }
}

resource "aws_subnet" "private-us-west-1c" {
  vpc_id            = aws_vpc.california.id
  cidr_block        = "10.26.13.0/24"
  availability_zone = "us-west-1c"

  tags = {
    Name    = "private-us-west-1c"
    Service = "california.idaws_vpc.california.id"
  }
}
#Hong Kong ///////////////////////////////////////////////////
#These are for  public

resource "aws_subnet" "public-ap-east-1a" {
  vpc_id                  = aws_vpc.hongkong.id
  cidr_block              = "10.25.1.0/24"
  availability_zone       = "ap-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-east-1a"
    Service = "hongkong.idaws_vpc.hongkong.id"
  }
}
resource "aws_subnet" "public-ap-east-1b" {
  vpc_id                  = aws_vpc.hongkong.id
  cidr_block              = "10.25.2.0/24"
  availability_zone       = "ap-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-east-1b"
    Service = "hongkong.idaws_vpc.hongkong.id"
  }
}

#these are for private
resource "aws_subnet" "private-ap-east-1a" {
  vpc_id            = aws_vpc.hongkong.id
  cidr_block        = "10.26.11.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name    = "private-ap-east-1a"
    Service = "hongkong.idaws_vpc.hongkong.id"
  }
}
resource "aws_subnet" "private-us-west-1b" {
  vpc_id            = aws_vpc.hongkong.id
  cidr_block        = "10.25.13.0/24"
  availability_zone = "ap-east-1b"

  tags = {
    Name    = "private-ap-east-1b"
    Service = "hongkong.idaws_vpc.hongkong.id"
  }
}
//''''''''''''''''''''
resource "aws_subnet" "public-eu-west-2c" {
  vpc_id                  = aws_vpc.London.id
  cidr_block              = "10.71.3.0/24"
  availability_zone       = "eu-west-2c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-west-2c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
resource "aws_subnet" "private-eu-west-2c" {
  vpc_id            = aws_vpc.London.id
  cidr_block        = "10.71.13.0/24"
  availability_zone = "eu-west-2c"

  tags = {
    Name    = "private-eu-west-2c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}