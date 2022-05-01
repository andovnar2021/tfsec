provider "aws" {
  region     = "eu-central-1"

}

module "aws_vpc" {

    source  = "github.com/andovnar2021/terraform-modules/aws_network"

}



module "aws_sg" {

    source  = "github.com/andovnar2021/terraform-modules/aws_security_group"
    in_list_ports = [{from_port = 8080, to_port = 8080, protocol    = "tcp",cidr_blocks = ["0.0.0.0/0"]},{from_port = 80, to_port = 80, protocol    = "tcp",cidr_blocks = ["10.1.0.0/16"]}]

}

