
# Australia ///////////////////////
resource "aws_security_group" "australia-sg01-servers" {
  name        = "australia-sg01-servers"
  description = "australia-sg01-servers"
  vpc_id      = aws_vpc.australia.id

  ingress {
    description = "MyHomePage"
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
    description = "MyEvilBox"
    from_port   = 3389
    to_port     = 3389
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
    Name    = "australia-sg01-servers"
    Service = "application1"
  }

}
resource "aws_security_group" "australia-sg02-LB01" {
  name        = "australis-sg02-LB01"
  description = "australia-sg02-LB01"
  vpc_id      = aws_vpc.australia.id

  ingress {
    description = "MyHomePage"
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
    Name    = "australia-sg02-LB01"
    Service = "security group"

  }

}
#California ///////////////////////
resource "aws_security_group" "california-sg01-servers" {
  name        = "california-sg01-servers"
  description = "california-sg01-servers"
  vpc_id      = aws_vpc.california.id

  ingress {
    description = "MyHomePage"
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
    description = "MyEvilBox"
    from_port   = 3389
    to_port     = 3389
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
    Name    = "california-sg01-servers"
    Service = "application1"
  }

}
resource "aws_security_group" "california-sg02-LB01" {
  name        = "california-sg02-LB01"
  description = "california-sg02-LB01"
  vpc_id      = aws_vpc.california.id

  ingress {
    description = "MyHomePage"
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
    Name    = "california-sg02-LB01"
    Service = "security group"

  }

}
# Hong Kong ///////////////////////
resource "aws_security_group" "hongkong-sg01-servers" {
  name        = "hongkong-sg01-servers"
  description = "hongkong-sg01-servers"
  vpc_id      = aws_vpc.hongkong.id

  ingress {
    description = "MyHomePage"
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
    description = "MyEvilBox"
    from_port   = 3389
    to_port     = 3389
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
    Name    = "hongkong-sg01-servers"
    Service = "application1"
  }

}
resource "aws_security_group" "hongkong-sg02-LB01" {
  name        = "hongkong-sg02-LB01"
  description = "hongkong-sg02-LB01"
  vpc_id      = aws_vpc.hongkong.id

  ingress {
    description = "MyHomePage"
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
    Name    = "hongkong-sg02-LB01"
    Service = "security group"

  }

}