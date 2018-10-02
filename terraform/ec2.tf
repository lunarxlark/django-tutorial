data "aws_iam_instance_profile" "iam-instance-profile-ec2-dt-ap-role" {
  name = "ec2-dt-ap-role"
}

data "aws_ami" "amazon_linux2_latest_hvm" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "ec2-ap" {
  count                       = "2"
  ami                         = "${aws_ami.amazonlinux2_latest_hvm}"
  instance_type               = "t3.micro"
  key_name                    = "dt"
  vpc_security_group_ids      = ["${aws_security_group.sg-dt-ap.id}"]
  subnet_id                   = "${aws_subnet.subnet-dt-middle-a.id}"
  associate_public_ip_address = true
  iam_instance_profile        = "${data.aws_iam_instance_profile.iam-instance-profile-ec2-dt-ap-role.name}"

  credit_specification {
    cpu_credits = "standard"
  }

  user_data = <<EOF

      sudo yum update -y
      sudo yum install -y mysql
      sudo amazon-linux-extras install -y python3 nginx1.12
      sudo -H pip3 install --upgrade pip
      sudo -H pip install virtualenv
      virtualenv myblogapp

      # for ssm-agent
      sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
      sudo systemctl restart amazon-ssm-agent
    EOF

  tags {
    Name = "ec2-dt-ap-${count.index}"
  }
}
