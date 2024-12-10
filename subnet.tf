#These are for public subnets for Tokyo region

resource "aws_subnet" "public-ap-northeast-1a" {
  provider                = aws.Tokyo
  vpc_id                  = aws_vpc.tokyo-vpc.id
  cidr_block              = "10.20.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true


}

resource "aws_subnet" "public-ap-northeast-1c" {
  provider                = aws.Tokyo
  vpc_id                  = aws_vpc.tokyo-vpc.id
  cidr_block              = "10.20.3.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true


}

#These are for public subnets in Hong Kong region

resource "aws_subnet" "public-ap-east-1a" {
  provider                = aws.Hong-Kong
  vpc_id                  = aws_vpc.hong-kong-vpc.id
  cidr_block              = "10.21.1.0/24"
  availability_zone       = "ap-east-1a"
  map_public_ip_on_launch = true


}

resource "aws_subnet" "public-ap-east-1b" {
  provider                = aws.Hong-Kong
  vpc_id                  = aws_vpc.hong-kong-vpc.id
  cidr_block              = "10.21.2.0/24"
  availability_zone       = "ap-east-1b"
  map_public_ip_on_launch = true


}
#These are public subnets for London Region

resource "aws_subnet" "public-eu-west-2a" {
  provider                = aws.London
  vpc_id                  = aws_vpc.london-vpc.id
  cidr_block              = "10.22.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true


}

resource "aws_subnet" "public-eu-west-2b" {
  provider                = aws.London
  vpc_id                  = aws_vpc.london-vpc.id
  cidr_block              = "10.22.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true


}

#These are public subnets for Sao Paulo

resource "aws_subnet" "public-sa-east-1a" {
  provider                = aws.Sao-Paulo
  vpc_id                  = aws_vpc.sao-paulo-vpc.id
  cidr_block              = "10.23.1.0/24"
  availability_zone       = "sa-east-1a"
  map_public_ip_on_launch = true


}

resource "aws_subnet" "public-sa-east-1c" {
  provider                = aws.Sao-Paulo
  vpc_id                  = aws_vpc.sao-paulo-vpc.id
  cidr_block              = "10.23.3.0/24"
  availability_zone       = "sa-east-1c"
  map_public_ip_on_launch = true


}

#These are public subnets for California
resource "aws_subnet" "public-us-west-1c" {
  provider                = aws.California
  vpc_id                  = aws_vpc.california-vpc.id
  cidr_block              = "10.24.1.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true


}

resource "aws_subnet" "public-us-west-1b" {
  provider                = aws.California
  vpc_id                  = aws_vpc.california-vpc.id
  cidr_block              = "10.24.2.0/24"
  availability_zone       = "us-west-1b"
  map_public_ip_on_launch = true


}

#These are public subnets for Australia
resource "aws_subnet" "public-ap-southeast-2a" {
  provider                = aws.Australia
  vpc_id                  = aws_vpc.australia-vpc.id
  cidr_block              = "10.25.1.0/24"
  availability_zone       = "ap-southeast-2a"
  map_public_ip_on_launch = true


}

resource "aws_subnet" "public-ap-southeast-2b" {
  provider                = aws.Australia
  vpc_id                  = aws_vpc.australia-vpc.id
  cidr_block              = "10.25.2.0/24"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true


}

#These are public subnets for New York 
resource "aws_subnet" "public-us-east-1a" {
  provider                = aws.New-York
  vpc_id                  = aws_vpc.new-york-vpc.id
  cidr_block              = "10.26.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true


}

resource "aws_subnet" "public-us-east-1b" {
  provider                = aws.New-York
  vpc_id                  = aws_vpc.new-york-vpc.id
  cidr_block              = "10.26.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true


}


#these are for private for Tokyo region

resource "aws_subnet" "private-ap-northeast-1a" {
  provider          = aws.Tokyo
  vpc_id            = aws_vpc.tokyo-vpc.id
  cidr_block        = "10.20.11.0/24"
  availability_zone = "ap-northeast-1a"


}

resource "aws_subnet" "private-ap-northeast-1c" {
  provider          = aws.Tokyo
  vpc_id            = aws_vpc.tokyo-vpc.id
  cidr_block        = "10.20.13.0/24"
  availability_zone = "ap-northeast-1c"


}

#These are private for Hong Kong region 

resource "aws_subnet" "private-ap-east-1a" {
  provider          = aws.Hong-Kong
  vpc_id            = aws_vpc.hong-kong-vpc.id
  cidr_block        = "10.21.11.0/24"
  availability_zone = "ap-east-1a"


}

resource "aws_subnet" "private-ap-east-1b" {
  provider          = aws.Hong-Kong
  vpc_id            = aws_vpc.hong-kong-vpc.id
  cidr_block        = "10.21.12.0/24"
  availability_zone = "ap-east-1b"


}

# These are private subnets for London 

resource "aws_subnet" "private-eu-west-2a" {
  provider          = aws.London
  vpc_id            = aws_vpc.london-vpc.id
  cidr_block        = "10.22.11.0/24"
  availability_zone = "eu-west-2a"


}

resource "aws_subnet" "private-eu-west-2b" {
  provider          = aws.London
  vpc_id            = aws_vpc.london-vpc.id
  cidr_block        = "10.22.12.0/24"
  availability_zone = "eu-west-2b"


}

#These are private subnets for Sao Paulo

resource "aws_subnet" "private-sa-east-1a" {
  provider          = aws.Sao-Paulo
  vpc_id            = aws_vpc.sao-paulo-vpc.id
  cidr_block        = "10.23.11.0/24"
  availability_zone = "sa-east-1a"


}

resource "aws_subnet" "private-sa-east-1c" {
  provider          = aws.Sao-Paulo
  vpc_id            = aws_vpc.sao-paulo-vpc.id
  cidr_block        = "10.23.13.0/24"
  availability_zone = "sa-east-1c"


}

#These are private subnets for California region

resource "aws_subnet" "private-us-west-1c" {
  provider          = aws.California
  vpc_id            = aws_vpc.california-vpc.id
  cidr_block        = "10.24.11.0/24"
  availability_zone = "us-west-1c"


}

resource "aws_subnet" "private-us-west-1b" {
  provider          = aws.California
  vpc_id            = aws_vpc.california-vpc.id
  cidr_block        = "10.24.12.0/24"
  availability_zone = "us-west-1b"


}

#These are private subnets for Australia 

resource "aws_subnet" "private-ap-southeast-2a" {
  provider          = aws.Australia
  vpc_id            = aws_vpc.australia-vpc.id
  cidr_block        = "10.25.11.0/24"
  availability_zone = "ap-southeast-2a"


}

resource "aws_subnet" "private-ap-southeast-2b" {
  provider          = aws.Australia
  vpc_id            = aws_vpc.australia-vpc.id
  cidr_block        = "10.25.12.0/24"
  availability_zone = "ap-southeast-2b"


}

#These are private subnets for New York

resource "aws_subnet" "private-us-east-1a" {
  provider          = aws.New-York
  vpc_id            = aws_vpc.new-york-vpc.id
  cidr_block        = "10.26.11.0/24"
  availability_zone = "us-east-1a"


}

resource "aws_subnet" "private-us-east-1b" {
  provider          = aws.New-York
  vpc_id            = aws_vpc.new-york-vpc.id
  cidr_block        = "10.26.12.0/24"
  availability_zone = "us-east-1b"


}
