provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami               = "ami-0758470213bdd23b1" # Ubuntu 20.04
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  key_name          = "aws-us-east"
  security_groups   = ["${aws_security_group.main.name}"]

  root_block_device {
    volume_type = "gp2"
    volume_size = 8
  }

  volume_tags = {
    Name = "DavidliaoWebServer"
  }

  tags = {
    Name = "DavidliaoWebServer"
    Apps = "DavidliaoSite"
  }
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.webserver.id
}

resource "aws_security_group" "main" {
  name        = "DevWebServerSG"
  description = "Allows SSH, various custom TCP ports, and ICMP for ping."

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTPS traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
