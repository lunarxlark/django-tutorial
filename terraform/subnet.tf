resource "aws_subnet" "subnet-dt-front-a" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.1.0/24"
  availability_zone               = "ap-northeast-1a"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-front-a"
  }
}

resource "aws_subnet" "subnet-dt-front-c" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.2.0/24"
  availability_zone               = "ap-northeast-1c"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-front-c"
  }
}

resource "aws_subnet" "subnet-dt-front-d" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.3.0/24"
  availability_zone               = "ap-northeast-1d"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-front-d"
  }
}

resource "aws_subnet" "subnet-dt-middle-a" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.11.0/24"
  availability_zone               = "ap-northeast-1a"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-middle-a"
  }
}

resource "aws_subnet" "subnet-dt-middle-c" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.12.0/24"
  availability_zone               = "ap-northeast-1c"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-middle-c"
  }
}

resource "aws_subnet" "subnet-dt-middle-d" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.13.0/24"
  availability_zone               = "ap-northeast-1d"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-middle-d"
  }
}

resource "aws_subnet" "subnet-dt-back-a" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.21.0/24"
  availability_zone               = "ap-northeast-1a"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-back-a"
  }
}

resource "aws_subnet" "subnet-dt-back-c" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.22.0/24"
  availability_zone               = "ap-northeast-1c"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-back-c"
  }
}

resource "aws_subnet" "subnet-dt-back-d" {
  vpc_id                          = "${aws_vpc.vpc-dt.id}"
  cidr_block                      = "10.0.23.0/24"
  availability_zone               = "ap-northeast-1d"
  map_public_ip_on_launch         = "false"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name = "sb-dt-back-d"
  }
}
