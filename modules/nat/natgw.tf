resource "aws_eip" "natgw-eip" {
  tags = {
    Name = "${var.vpc_name}-EIP"
  }
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.natgw-eip.id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "${var.vpc_name}-NAT-GW"
  }
}
