resource "aws_security_group" "SaoPaolo-tg01-sg01" {
  name        = "SaoPaolo-tg01-sg01"
  description = "SaoPaolo-tg01-sg01"
  vpc_id      = aws_vpc.SaoPaolo.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Syslog"
    from_port   = 514
    to_port     = 514
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "SaoPaolo-tg01-sg01"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }

}





resource "aws_security_group" "SaoPaolo-lb01-sg01" {
  name        = "SaoPaolo-lb01-sg01"
  description = "SaoPaolo-lb01-sg01"
  vpc_id      = aws_vpc.SaoPaolo.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "SaoPaolo-lb01-sg01"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }

}
