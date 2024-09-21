locals {
  name   = "tech-challenge-fase-3-rds"
  region = "us-east-1"

  engine         = "postgres"
  engine_version = "16"
  family         = "postgres16"
  instance_class = "db.m5.large"

  db_name     = "tech_challenge_fase_3"
  db_username = "tech_challenge_fase_3"
  port        = 5432

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Name = local.name
  }
}
