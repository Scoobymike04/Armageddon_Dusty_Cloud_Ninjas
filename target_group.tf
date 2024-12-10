# Tokyo Target Group
resource "aws_lb_target_group" "Tokyo-TG-80" {
  provider    = aws.Tokyo
  name        = "Tokyo-TG-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.tokyo-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
}

# Hong Kong Target Group
resource "aws_lb_target_group" "Hong-Kong-TG-80" {
  provider    = aws.Hong-Kong
  name        = "Hong-Kong-TG-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.hong-kong-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
}

# San Paulo Target Group
resource "aws_lb_target_group" "Sao-Paulo-TG-80" {
  provider    = aws.Sao-Paulo
  name        = "Sao-Paulo-TG-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.sao-paulo-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
}

# London Target Group
resource "aws_lb_target_group" "London-TG-80" {
  provider    = aws.London
  name        = "London-TG-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.london-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
}

# California Target Group
resource "aws_lb_target_group" "California-TG-80" {
  provider    = aws.California
  name        = "California-TG-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.california-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
}

# Australia Target Group
resource "aws_lb_target_group" "Australia-TG-80" {
  provider    = aws.Australia
  name        = "Australia-TG-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.australia-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
}

# New-York Target Group
resource "aws_lb_target_group" "New-York-TG-80" {
  provider    = aws.New-York
  name        = "New-York-TG-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.new-york-vpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
}
