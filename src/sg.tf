resource "aws_security_group" "allow_postgres_traffic" {
  name        = "allow_postgres"
  description = "Allow Postgres traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "allow Postgres"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow postgres"
  }
}
