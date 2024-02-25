#main.tf

terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
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

resource "aws_instance" "ECS" {
    ami     = "ami-001899242bb902164" // Ubuntu 20.04 LTS // us-east-1
    instance_type = "t2.micro"
    subnet_id = "subnet-05a025cc249b925a1"
    tags = {
        ExtraTag = local.extra_tag
    }
}