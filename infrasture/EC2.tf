# EC2 Instance in the Public Subnet 
resource "aws_instance" "server_public" {
  ami                         = "ami-0866a3c8686eaeeba"
  instance_type               = "t2.micro"
  count                       = 3
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")
  vpc_security_group_ids      = [aws_security_group.allow_web.id]
  key_name                    = "gold2"
  tags = {
    Name = "ansible-controller"
  }
}