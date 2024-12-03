resource "aws_route_table" "private_tok" {
  vpc_id = aws_vpc.Tokyoapp1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_tok.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private_tok"
  }
}

resource "aws_route_table" "public_tok" {
  vpc_id = aws_vpc.Tokyoapp1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_tok.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-ap-northeast-1a" {
  subnet_id      = aws_subnet.private-ap-northeast-1a.id
  route_table_id = aws_route_table.private_tok.id
}

resource "aws_route_table_association" "private-ap-northeast-1c" {
  subnet_id      = aws_subnet.private-ap-northeast-1c.id
  route_table_id = aws_route_table.private_tok.id
}
# resource "aws_route_table_association" "private-ap-northeast-1c" {
#   subnet_id      = aws_subnet.private-ap-northeast-1c.id
#   route_table_id = aws_route_table.private.id
# }


#public

resource "aws_route_table_association" "public-ap-northeast-1a" {
  subnet_id      = aws_subnet.public-ap-northeast-1a.id
  route_table_id = aws_route_table.public_tok.id
}

resource "aws_route_table_association" "public-ap-northeast-1c" {
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.public_tok.id
}

# resource "aws_route_table_association" "public-ap-northeast-1c" {
#   subnet_id      = aws_subnet.public-ap-northeast-1c.id
#   route_table_id = aws_route_table.public.id
# }
