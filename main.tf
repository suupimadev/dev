provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-070d2b24928913a49" # Amazon Linux 2 (東京)
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2-test"
  }
}
