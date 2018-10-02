resource "aws_security_group" "sg-dt-alb" {
  name        = "SG-dt-alb"
  description = "Allow to alb"
  vpc_id      = "${aws_vpc.vpc-dt.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "sg-dt-alb"
  }
}

resource "aws_security_group" "sg-dt-ap" {
  name        = "SG-dt-ap"
  description = "Allow to ap"
  vpc_id      = "${aws_vpc.vpc-dt.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    security_groups = [
      "${aws_security_group.sg-dt-alb.id}",
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "sg-dt-ap"
  }
}

resource "aws_security_group" "sg-dt-db" {
  name        = "SG-dt-db"
  description = "Allow to db"
  vpc_id      = "${aws_vpc.vpc-dt.id}"

  ingress {
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"

    cidr_blocks = [
      "${aws_subnet.subnet-dt-middle-a.cidr_block}",
      "${aws_subnet.subnet-dt-middle-c.cidr_block}",
      "${aws_subnet.subnet-dt-middle-d.cidr_block}",
    ]
  }

  tags {
    Name = "sg-dt-db"
  }
}
