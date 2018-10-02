resource "aws_route_table" "rtb-dt-front" {
  vpc_id = "${aws_vpc.vpc-dt.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw-dt.id}"
  }

  tags {
    Name = "rtb-dt-front"
  }
}

resource "aws_route_table_association" "rtba-dt-front-a" {
  subnet_id      = "${aws_subnet.subnet-dt-front-a.id}"
  route_table_id = "${aws_route_table.rtb-dt-front.id}"
}

resource "aws_route_table_association" "rtba-dt-front-c" {
  subnet_id      = "${aws_subnet.subnet-dt-front-c.id}"
  route_table_id = "${aws_route_table.rtb-dt-front.id}"
}

resource "aws_route_table_association" "rtba-dt-front-d" {
  subnet_id      = "${aws_subnet.subnet-dt-front-d.id}"
  route_table_id = "${aws_route_table.rtb-dt-front.id}"
}

resource "aws_route_table" "rtb-dt-middle" {
  vpc_id = "${aws_vpc.vpc-dt.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw-dt.id}"
  }

  tags {
    Name = "rtb-dt-middle"
  }
}

resource "aws_route_table_association" "rtba-dt-middle-a" {
  subnet_id      = "${aws_subnet.subnet-dt-middle-a.id}"
  route_table_id = "${aws_route_table.rtb-dt-middle.id}"
}

resource "aws_route_table_association" "rtba-dt-middle-c" {
  subnet_id      = "${aws_subnet.subnet-dt-middle-c.id}"
  route_table_id = "${aws_route_table.rtb-dt-middle.id}"
}

resource "aws_route_table_association" "rtba-dt-middle-d" {
  subnet_id      = "${aws_subnet.subnet-dt-middle-d.id}"
  route_table_id = "${aws_route_table.rtb-dt-middle.id}"
}

resource "aws_route_table" "rtb-dt-back" {
  vpc_id = "${aws_vpc.vpc-dt.id}"

  tags {
    Name = "rtb-dt-back"
  }
}

resource "aws_route_table_association" "rtba-dt-back-a" {
  subnet_id      = "${aws_subnet.subnet-dt-back-a.id}"
  route_table_id = "${aws_route_table.rtb-dt-back.id}"
}

resource "aws_route_table_association" "rtba-dt-back-c" {
  subnet_id      = "${aws_subnet.subnet-dt-back-c.id}"
  route_table_id = "${aws_route_table.rtb-dt-back.id}"
}

resource "aws_route_table_association" "rtba-dt-back-d" {
  subnet_id      = "${aws_subnet.subnet-dt-back-d.id}"
  route_table_id = "${aws_route_table.rtb-dt-back.id}"
}
