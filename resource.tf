resource "aws_instance" "server" {
    ami = var.ami
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name
        Environment = var.env
        Provisioner = "Terraform"
    }
}

resource "aws_vpc" "main" {
    cidr_block = var.base_cidr_block
    tags = {
        Name = var.vpc_name
	Environment = var.env
    }
}
