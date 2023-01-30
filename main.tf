provider "aws" {
  region = "us-east-1"
  access_key = "AKIA4AD2YR7Y5H6OBW5J"
  secret_key = "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"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-00874d747dde814fa"
    instance_type = "t2.micro"
    subnet_id = "subnet-0ccbfba0546dd6c07"
    security_groups = ["sg-0e10ffd1a814f34e2"]
    key_name = "awskey"
    tags = {
      "name" = "First_Instance"
    }
  
}
