
resource "aws_route_table" "route_tokyo-private" {
  provider = aws.Tokyo
  vpc_id   = aws_vpc.tokyo-vpc.id
}

resource "aws_route" "tokyo-hong_kong" {
  provider               = aws.Tokyo
  route_table_id         = aws_route_table.route_tokyo-private.id
  destination_cidr_block = aws_vpc.hong-kong-vpc.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.Tokyo_TGW.id
}
resource "aws_route_table" "route-tokyo-public" {
  provider = aws.Tokyo
  vpc_id   = aws_vpc.tokyo-vpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.tokyo.id
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
}
resource "aws_route_table_association" "private-ap-northeast-1a" {
  provider       = aws.Tokyo
  subnet_id      = aws_subnet.private-ap-northeast-1a.id
  route_table_id = aws_route_table.route_tokyo-private.id
}

resource "aws_route_table_association" "private-ap-northeast-1c" {
  provider       = aws.Tokyo
  subnet_id      = aws_subnet.private-ap-northeast-1c.id
  route_table_id = aws_route_table.route_tokyo-private.id
}

resource "aws_route_table_association" "public-ap-northeast-1a" {
  provider       = aws.Tokyo
  subnet_id      = aws_subnet.public-ap-northeast-1a.id
  route_table_id = aws_route_table.route-tokyo-public.id
}

resource "aws_route_table_association" "public-ap-northeast-1c" {
  provider       = aws.Tokyo
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.route-tokyo-public.id
}

resource "aws_route_table" "Hong-Kong-private-rtb" {
  provider = aws.Hong-Kong
  vpc_id   = aws_vpc.hong-kong-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.hong_kong.id
  }

  tags = {
    Name = "Hong-Kong-private"
  }
}

resource "aws_route" "hong_kong_to_tokyo" {
  provider               = aws.Hong-Kong
  route_table_id         = aws_route_table.Hong-Kong-private-rtb.id
  destination_cidr_block = aws_vpc.tokyo-vpc.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.Hong_Kong_TGW.id
}

resource "aws_route_table" "Hong-Kong-public-rtb" {
  provider = aws.Hong-Kong
  vpc_id   = aws_vpc.hong-kong-vpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.hong-kong.id
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
    Name = "Hong-Kong-public"
  }
}

resource "aws_route_table_association" "private-ap-east-1a" {
  provider       = aws.Hong-Kong
  subnet_id      = aws_subnet.private-ap-east-1a.id
  route_table_id = aws_route_table.Hong-Kong-private-rtb.id
}

resource "aws_route_table_association" "private-ap-east-1b" {
  provider       = aws.Hong-Kong
  subnet_id      = aws_subnet.private-ap-east-1b.id
  route_table_id = aws_route_table.Hong-Kong-private-rtb.id
}

resource "aws_route_table_association" "public-ap-east-1a" {
  provider       = aws.Hong-Kong
  subnet_id      = aws_subnet.public-ap-east-1a.id
  route_table_id = aws_route_table.Hong-Kong-public-rtb.id
}

resource "aws_route_table_association" "public-ap-east-1b" {
  provider       = aws.Hong-Kong
  subnet_id      = aws_subnet.public-ap-east-1b.id
  route_table_id = aws_route_table.Hong-Kong-public-rtb.id
}

resource "aws_route_table" "London-private-rtb" {
  provider = aws.London
  vpc_id   = aws_vpc.london-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.london.id
  }
}


resource "aws_route_table" "London-public-rtb" {
  provider = aws.London
  vpc_id   = aws_vpc.london-vpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.london.id
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
}

resource "aws_route_table_association" "private-eu-west-2a" {
  provider       = aws.London
  subnet_id      = aws_subnet.private-eu-west-2a.id
  route_table_id = aws_route_table.London-private-rtb.id
}

resource "aws_route_table_association" "private-eu-west-2b" {
  provider       = aws.London
  subnet_id      = aws_subnet.private-eu-west-2b.id
  route_table_id = aws_route_table.London-private-rtb.id
}

resource "aws_route_table_association" "public-eu-west-2a" {
  provider       = aws.London
  subnet_id      = aws_subnet.public-eu-west-2a.id
  route_table_id = aws_route_table.London-public-rtb.id
}

resource "aws_route_table_association" "public-eu-west-2b" {
  provider       = aws.London
  subnet_id      = aws_subnet.public-eu-west-2b.id
  route_table_id = aws_route_table.London-public-rtb.id
}

resource "aws_route_table" "Sao-Paulo-private-rtb" {
  provider = aws.Sao-Paulo
  vpc_id   = aws_vpc.sao-paulo-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.sao_paulo.id
  }
}
resource "aws_route_table" "Sao-Paulo-public-rtb" {
  provider = aws.Sao-Paulo
  vpc_id   = aws_vpc.sao-paulo-vpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.sao-paulo.id
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

}
resource "aws_route_table_association" "private-sa-east-1a" {
  provider       = aws.Sao-Paulo
  subnet_id      = aws_subnet.private-sa-east-1a.id
  route_table_id = aws_route_table.Sao-Paulo-private-rtb.id
}

resource "aws_route_table_association" "private-sa-east-1c" {
  provider       = aws.Sao-Paulo
  subnet_id      = aws_subnet.private-sa-east-1c.id
  route_table_id = aws_route_table.Sao-Paulo-private-rtb.id
}

resource "aws_route_table_association" "public-sa-east-1a" {
  provider       = aws.Sao-Paulo
  subnet_id      = aws_subnet.public-sa-east-1a.id
  route_table_id = aws_route_table.Sao-Paulo-public-rtb.id
}

resource "aws_route_table_association" "public-sa-east-1c" {
  provider       = aws.Sao-Paulo
  subnet_id      = aws_subnet.public-sa-east-1c.id
  route_table_id = aws_route_table.Sao-Paulo-public-rtb.id
}
resource "aws_route_table" "California-private-rtb" {
  provider = aws.California
  vpc_id   = aws_vpc.california-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.california.id
  }
}

resource "aws_route_table" "California-public-rtb" {
  provider = aws.California
  vpc_id   = aws_vpc.california-vpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.california.id
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
}

resource "aws_route_table_association" "private-us-west-1c" {
  provider       = aws.California
  subnet_id      = aws_subnet.private-us-west-1c.id
  route_table_id = aws_route_table.California-private-rtb.id
}

resource "aws_route_table_association" "private-us-west-1b" {
  provider       = aws.California
  subnet_id      = aws_subnet.private-us-west-1b.id
  route_table_id = aws_route_table.California-private-rtb.id
}

resource "aws_route_table_association" "public-us-west-1c" {
  provider       = aws.California
  subnet_id      = aws_subnet.public-us-west-1c.id
  route_table_id = aws_route_table.California-public-rtb.id
}

resource "aws_route_table_association" "public-us-west-1b" {
  provider       = aws.California
  subnet_id      = aws_subnet.public-us-west-1b.id
  route_table_id = aws_route_table.California-public-rtb.id
}

resource "aws_route_table" "Australia-private-rtb" {
  provider = aws.Australia
  vpc_id   = aws_vpc.australia-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.australia.id
  }
}

resource "aws_route_table" "Australia-public-rtb" {
  provider = aws.Australia
  vpc_id   = aws_vpc.australia-vpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.australia.id
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
}
resource "aws_route_table_association" "private-ap-southeast-2a" {
  provider       = aws.Australia
  subnet_id      = aws_subnet.private-ap-southeast-2a.id
  route_table_id = aws_route_table.Australia-private-rtb.id
}

resource "aws_route_table_association" "private-ap-southeast-2b" {
  provider       = aws.Australia
  subnet_id      = aws_subnet.private-ap-southeast-2b.id
  route_table_id = aws_route_table.Australia-private-rtb.id
}
# public

resource "aws_route_table_association" "public-ap-southeast-2a" {
  provider       = aws.Australia
  subnet_id      = aws_subnet.public-ap-southeast-2a.id
  route_table_id = aws_route_table.Australia-public-rtb.id
}

resource "aws_route_table_association" "public-ap-southeast-2b" {
  provider       = aws.Australia
  subnet_id      = aws_subnet.public-ap-southeast-2b.id
  route_table_id = aws_route_table.Australia-public-rtb.id
}

resource "aws_route_table" "New-York-private-rtb" {
  provider = aws.New-York
  vpc_id   = aws_vpc.new-york-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.new_york.id
  }
}

resource "aws_route_table" "New-York-public-rtb" {
  provider = aws.New-York
  vpc_id   = aws_vpc.new-york-vpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.new_york.id
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
}
resource "aws_route_table_association" "private-us-east-1a" {
  provider       = aws.New-York
  subnet_id      = aws_subnet.private-us-east-1a.id
  route_table_id = aws_route_table.New-York-private-rtb.id
}

resource "aws_route_table_association" "private-us-east-1b" {
  provider       = aws.New-York
  subnet_id      = aws_subnet.private-us-east-1b.id
  route_table_id = aws_route_table.New-York-private-rtb.id
}
# public

resource "aws_route_table_association" "public-us-east-1a" {
  provider       = aws.New-York
  subnet_id      = aws_subnet.public-us-east-1a.id
  route_table_id = aws_route_table.New-York-public-rtb.id
}

resource "aws_route_table_association" "public-us-east-1b" {
  provider       = aws.New-York
  subnet_id      = aws_subnet.public-us-east-1b.id
  route_table_id = aws_route_table.New-York-public-rtb.id
}
