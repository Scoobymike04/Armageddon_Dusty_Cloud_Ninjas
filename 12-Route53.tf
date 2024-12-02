#pay attention to the alias -may need multiple
/*
data "aws_route53_zone" "main" {
  name         = "evan29ny.com"  # my domain -this finally approved
  private_zone = false
}


resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "evan29ny.com"
  type    = "A"

  alias {
    name                   = aws_lb.tokyo_alb.dns_name
    zone_id                = aws_lb.tokyo_alb.zone_id
    evaluate_target_health = true
  } 
}
resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "evan29ny.com"
  type    = "A"

  alias {
    name                   = aws_lb.california_alb.dns_name
    zone_id                = aws_lb.california_alb.zone_id
    evaluate_target_health = true
  }
}
*/