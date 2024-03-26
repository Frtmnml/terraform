resource "aws_db_instance" "mydb" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  parameter_group_name = "mydb.mysql5.7"
  skip_final_snapshot  = true

  username = var.username
  password = var.password
}