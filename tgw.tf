resource "aws_ec2_transit_gateway" "Tokyo_TGW" {
  provider                        = aws.Tokyo
  description                     = "TGW for Tokyo"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"

  default_route_table_propagation = "enable"
}

resource "aws_ec2_transit_gateway" "New_York_TGW" {
  provider                        = aws.New-York
  description                     = "TGW for New York"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"

  default_route_table_propagation = "enable"
}

resource "aws_ec2_transit_gateway" "London_TGW" {
  provider                        = aws.London
  description                     = "TGW for London"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"

  default_route_table_propagation = "enable"
}
resource "aws_ec2_transit_gateway" "Sao_Paulo_TGW" {
  provider                        = aws.Sao-Paulo
  description                     = "TGW for Sao Paulo"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"

  default_route_table_propagation = "enable"
}

resource "aws_ec2_transit_gateway" "Australia_TGW" {
  provider                        = aws.Australia
  description                     = "TGW for Australia"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"

  default_route_table_propagation = "enable"
}
resource "aws_ec2_transit_gateway" "Hong_Kong_TGW" {
  provider                        = aws.Hong-Kong
  description                     = "TGW for Hong Kong"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"

  default_route_table_propagation = "enable"
}
resource "aws_ec2_transit_gateway" "California_TGW" {
  provider                        = aws.California
  description                     = "TGW for California"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"

  default_route_table_propagation = "enable"
}




