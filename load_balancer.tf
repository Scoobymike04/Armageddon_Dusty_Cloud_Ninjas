resource "aws_lb" "tokyo" {
  provider                   = aws.Tokyo
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.tokyo-sg-lb.id]
  subnets                    = [aws_subnet.public-ap-northeast-1a.id, aws_subnet.public-ap-northeast-1c.id]
  enable_deletion_protection = false
}
resource "aws_lb" "newyork" {
  provider                   = aws.New-York
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.new-york-sg-lb.id]
  subnets                    = [aws_subnet.public-us-east-1a.id, aws_subnet.public-us-east-1b.id]
  enable_deletion_protection = false
}
resource "aws_lb" "london" {
  provider                   = aws.London
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.london-sg-lb.id]
  subnets                    = [aws_subnet.public-eu-west-2a.id, aws_subnet.public-eu-west-2b.id]
  enable_deletion_protection = false
}

resource "aws_lb" "saopaulo" {
  provider                   = aws.Sao-Paulo
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.sao-paulo-sg-lb.id]
  subnets                    = [aws_subnet.public-sa-east-1a.id, aws_subnet.public-sa-east-1c.id]
  enable_deletion_protection = false
}

resource "aws_lb" "australia" {
  provider                   = aws.Australia
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.australia-sg-lb.id]
  subnets                    = [aws_subnet.public-ap-southeast-2a.id, aws_subnet.public-ap-southeast-2b.id]
  enable_deletion_protection = false
}
resource "aws_lb" "hongkong" {
  provider                   = aws.Hong-Kong
  name                       = "telehealth-alb-hongkong"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.hong-kong-sg-lb.id]
  subnets                    = [aws_subnet.public-ap-east-1a.id, aws_subnet.public-ap-east-1b.id]
  enable_deletion_protection = false
}

resource "aws_lb" "california" {
  provider                   = aws.California
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.california-sg-lb.id]
  subnets                    = [aws_subnet.public-us-west-1c.id, aws_subnet.public-us-west-1b.id]
  enable_deletion_protection = false
}
