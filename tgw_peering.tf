resource "aws_ec2_transit_gateway_peering_attachment" "hong_kong_to_tokyo" {
  provider                = aws.Hong-Kong
  transit_gateway_id      = aws_ec2_transit_gateway.Hong_Kong_TGW.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.Tokyo_TGW.id
  peer_region             = "ap-northeast-1"

}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accept_hong_kong_to_tokyo" {
  provider                      = aws.Tokyo
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.hong_kong_to_tokyo.id

}

/*resource "aws_ec2_transit_gateway_peering_attachment" "tokyo_to_hong_kong" {
  provider                = aws.Tokyo
  transit_gateway_id      = aws_ec2_transit_gateway.Tokyo_TGW.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.Hong_Kong_TGW.id
  peer_region             = "ap-northeast-1"

}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accept_tokyo_to_hong_kong" {
  provider                      = aws.Tokyo
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.tokyo_to_hong_kong.id

}*/

resource "aws_ec2_transit_gateway_peering_attachment" "London_to_tokyo" {
  provider                = aws.London
  transit_gateway_id      = aws_ec2_transit_gateway.London_TGW.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.Tokyo_TGW.id
  peer_region             = "ap-northeast-1"
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accept_London_to_tokyo" {
  provider                      = aws.Tokyo
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.London_to_tokyo.id

}

resource "aws_ec2_transit_gateway_peering_attachment" "Sao_Paulo_to_tokyo" {
  provider                = aws.Sao-Paulo
  transit_gateway_id      = aws_ec2_transit_gateway.Sao_Paulo_TGW.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.Tokyo_TGW.id
  peer_region             = "ap-northeast-1"

  tags = {
    Name = "Sao-Paulo_to_tokyo"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accept_Sao_Paulo_to_tokyo" {
  provider                      = aws.Tokyo
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.Sao_Paulo_to_tokyo.id

  tags = {
    Name = "accept_Sao-Paulo_to_tokyo"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "California_to_tokyo" {
  provider                = aws.California
  transit_gateway_id      = aws_ec2_transit_gateway.California_TGW.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.Tokyo_TGW.id
  peer_region             = "ap-northeast-1"

  tags = {
    Name = "California_to_tokyo"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accept_California_to_tokyo" {
  provider                      = aws.Tokyo
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.California_to_tokyo.id

  tags = {
    Name = "accept_California_to_tokyo"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "Australia_to_tokyo" {
  provider                = aws.Australia
  transit_gateway_id      = aws_ec2_transit_gateway.Australia_TGW.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.Tokyo_TGW.id
  peer_region             = "ap-northeast-1"

  tags = {
    Name = "Australia_to_tokyo"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accept_Australia_to_tokyo" {
  provider                      = aws.Tokyo
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.Australia_to_tokyo.id

  tags = {
    Name = "accept_Australia_to_tokyo"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment" "New_York_to_tokyo" {
  provider                = aws.New-York
  transit_gateway_id      = aws_ec2_transit_gateway.New_York_TGW.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.Tokyo_TGW.id
  peer_region             = "ap-northeast-1"

  tags = {
    Name = "New-York_to_tokyo"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accept_New_York_to_tokyo" {
  provider                      = aws.Tokyo
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.New_York_to_tokyo.id

  tags = {
    Name = "accept_New-York_to_tokyo"
  }
}

