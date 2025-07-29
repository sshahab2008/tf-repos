provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-05ffe3c48a9991133" # Amazon Linux 2 AMI for us-east-1 (update as needed)
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
