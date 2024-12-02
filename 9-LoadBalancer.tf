
# Australia /////////////////////////////
resource "aws_lb" "australia_alb" {
  name               = "australia-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.australia-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-southeast-2a.id,
    aws_subnet.public-ap-southeast-2b.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "australiaLoadBalancer"
    Service = "australia"
  }
}

resource "aws_lb_listener" "http_aus" {
  load_balancer_arn = aws_lb.australia_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.australia_tg.arn
  }
}

output "lb_dns_name_aus" {
  value       = aws_lb.australia_alb.dns_name
  description = "The DNS name of the australia Load Balancer."
} 
# California ////////////////////////////Dhsfthsfhsf
resource "aws_lb" "california_alb" {
  name               = "california-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.california-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-west-1a.id,
    #aws_subnet.public-us-west-1b.id,
    aws_subnet.public-us-west-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "californiaLoadBalancer"
    Service = "california"
  }
}

resource "aws_lb_listener" "http_cal" {
  load_balancer_arn = aws_lb.california_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.california_tg.arn
  }
}

output "lb_dns_name_cal" {
  value       = aws_lb.california_alb.dns_name
  description = "The DNS name of the california Load Balancer."
}
# Hong Kong /////////////////////////////
resource "aws_lb" "hongkong_alb" {
  name               = "hongkong-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.hongkong-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-east-1a.id,
    aws_subnet.public-ap-east-1b.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "australiaLoadBalancer"
    Service = "australia"
  }
}

resource "aws_lb_listener" "http_hon" {
  load_balancer_arn = aws_lb.hongkong_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.hongkong_tg.arn
  }
}

output "lb_dns_name_hon" {
  value       = aws_lb.hongkong_alb.dns_name
  description = "The DNS name of the Hong Kong Load Balancer."
} 


/*
data "aws_acm_certificate" "cert" {
  domain   = "evan29ny.com"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.tokyo_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
 # certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tokyo_tg.arn
  }
}
*/