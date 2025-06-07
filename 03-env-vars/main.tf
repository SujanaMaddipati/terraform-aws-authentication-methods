provider "aws" {

region = "ap-south-1"

}

resource "aws_instance" "demo-one"{

instance_type = "t2.micro"
ami ="ami-0f535a71b34f2d44a"

}
