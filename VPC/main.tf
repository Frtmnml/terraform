#main.tf

terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region      = "us-east-1"
    access_key  =  var.access_key
    secret_key  = var.secret_key
}

locals {
    extra_tag = "extra-tag"
}

resource "aws_instance" "my_vpc" {
    for_each = var.service_names

    ami     = "ami-001899242bb902164" // Ubuntu 20.04 LTS // us-east-1
    instance_type = "t2.micro"
    subnet_id = module.vpc.public_subnets[0]
    vpc_security_groups_ids = [module.terraform-sg.vpc_security_group_id]
    associate_public_ip_address = true

    tags = {
        ExtraTag = local.extra_tag
        Name = "EC2-${each.key}"
    }
}

