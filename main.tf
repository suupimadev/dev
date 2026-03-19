resource "aws_security_group" "web_sg" {
  name = "terraform-web-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "web" {
  ami           = "ami-088b486f20fab3f0e"
  instance_type = "t3.micro"

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = {
    Name = "terraform-web"
  }
}