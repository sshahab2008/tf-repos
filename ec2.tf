provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQA7LP4KJPSXGYJOK"
  secret_key = "p/QgyrPoGRgLdc7qSG3PGI+suFpEOymZLnewXc6f"
}

resource "aws_instance" "example" {
  ami           = "ami-05ffe3c48a9991133" # Amazon Linux 2 AMI for us-east-1 (update as needed)
  instance_type = "t2.micro"

}
