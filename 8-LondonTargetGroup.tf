resource "aws_lb_target_group" "London_tg" {
  name     = "London-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.London.id
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

  tags = {
    Name    = "LondonTargetGroup"
    Service = "London"
    Owner   = "User"
    Project = "Web Service"
  }
}
