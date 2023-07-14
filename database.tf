resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [aws_subnet.private.id]
}

resource "aws_db_instance" "db_instance" {
  identifier            = "my-db-instance"
  engine                = "postgres"
  engine_version        = "14"
  instance_class        = "db.t3.micro"
  name                  = "app-db"
  username              = "admin"
  password              = var.database_password
  allocated_storage     = 20
  storage_type          = "gp2"
  publicly_accessible  = false
  db_subnet_group_name  = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
}