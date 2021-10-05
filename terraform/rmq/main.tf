provider "aws" {
    region = "ap-south-1"
    profile = var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-0c1a7f89451184c8b"
    instance_type = "t2.micro"
    key_name = "rabbitmq"
    vpc_security_group_ids = ["sg-0d69a254aedef9bd5"]

    tags = {
        Name = var.name
        group = var.group
    }
}
