provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "ec2-server" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  key_name = "aws-demo"
  count = "2"
  tags= {
      Name = "ec2-server-${count.index}"
  }
}
