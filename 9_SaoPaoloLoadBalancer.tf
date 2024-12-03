resource "aws_lb" "SaoPaolo_alb" {
  name               = "SaoPaolo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.SaoPaolo-lb01-sg01.id]
  subnets            = [
    aws_subnet.public-sa-east-1a.id,
    aws_subnet.public-sa-east-1c.id,
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "SaoPaoloLoadBalancer"
    Service = "SaoPaolo"
    Owner   = "User"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_sao" {
  load_balancer_arn = aws_lb.SaoPaolo_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.SaoPaolo_tg.arn
  }
}
/* This is for the HTTPS load balancer listener
data "aws_acm_certificate" "cert" {
  domain   = "balerica-aisecops.com"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.SaoPaolo_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-1016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.SaoPaolo_tg.arn
  }
}
*/
output "lb_dns_name_sao" {
  value       = aws_lb.SaoPaolo_alb.dns_name
  description = "The DNS name of the SaoPaolo Load Balancer."
}
