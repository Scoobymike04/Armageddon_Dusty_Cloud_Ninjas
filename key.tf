#TOKYO TOKYO TOKYO
resource "tls_private_key" "tokyo" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "tokyo" {
  provider   = aws.Tokyo
  public_key = tls_private_key.tokyo.public_key_openssh
}

output "tokyo_private_key" {
  value     = tls_private_key.tokyo.private_key_pem
  sensitive = true
}

resource "tls_private_key" "new_york" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "new_york" {
  provider   = aws.New-York
  public_key = tls_private_key.new_york.public_key_openssh
}

output "new_york_private_key" {
  value     = tls_private_key.new_york.private_key_pem
  sensitive = true
}

resource "tls_private_key" "london" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "london" {
  provider   = aws.London
  public_key = tls_private_key.london.public_key_openssh
}

output "london_private_key" {
  value     = tls_private_key.london.private_key_pem
  sensitive = true
}

resource "tls_private_key" "sao-paulo" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "sao-paulo" {
  provider   = aws.Sao-Paulo
  public_key = tls_private_key.sao-paulo.public_key_openssh
}

output "sao_paulo_private_key" {
  value     = tls_private_key.sao-paulo.private_key_pem
  sensitive = true
}

resource "tls_private_key" "australia" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "australia" {
  provider   = aws.Australia
  public_key = tls_private_key.australia.public_key_openssh
}

output "australia_private_key" {
  value     = tls_private_key.australia.private_key_pem
  sensitive = true
}
resource "tls_private_key" "hong-kong" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "hong-kong" {
  provider   = aws.Hong-Kong
  public_key = tls_private_key.hong-kong.public_key_openssh
}

output "hong_kong_private_key" {
  value     = tls_private_key.hong-kong.private_key_pem
  sensitive = true
}

resource "tls_private_key" "california" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "california" {
  provider   = aws.California
  public_key = tls_private_key.california.public_key_openssh
}

output "california_private_key" {
  value     = tls_private_key.california.private_key_pem
  sensitive = true
}




