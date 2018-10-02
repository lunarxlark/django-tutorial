resource "aws_internet_gateway" "igw-dt" {
  vpc_id = "${aws_vpc.vpc-dt.id}"

  tags {
    Name = "igw-dt"
  }
}
