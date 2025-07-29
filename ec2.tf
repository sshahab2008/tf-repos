provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI for us-east-1 (update as needed)
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
