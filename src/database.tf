resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [aws_subnet.public[0].id, aws_subnet.public[1].id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "db-main" {
  identifier             = local.name
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = local.engine
  engine_version         = local.engine_version
  instance_class         = local.instance_class
  db_name                = local.db_name
  username               = local.db_username
  password               = var.DB_PASSWORD
  vpc_security_group_ids = [aws_security_group.allow_postgres_traffic.id]
  publicly_accessible    = true
  skip_final_snapshot    = true
}
