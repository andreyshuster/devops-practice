resource "aws_instance" "test_instance" {
    ami = "ami-0a9e2b8a093c02922"
    instance_type = "t2.micro"
    key_name = "Glob-laptop"
    security_groups = [
        aws_security_group.ssh_access.name
    ]

    tags = {
        Name = "sandboxy"
    }
}

resource "aws_security_group" "ssh_access" {
  name = "test_sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow outgoing traffic to anywhere.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
