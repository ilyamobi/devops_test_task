resource "aws_instance" "app_server" {
  count         = 2
  ami           = "ami-12345678"  
  instance_type = "t2.micro"      
  subnet_id     = aws_subnet.private.id
  security_group_ids = [aws_security_group.web_sg.id]
}