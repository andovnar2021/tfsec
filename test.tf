provider "aws" {
  region     = "eu-central-1"

}

module "aws_vpc" {

    source  = "git@github.com:andovnar2021/terraform-modules.git//aws_network"

}



module "aws_sg" {

    source  = "git@github.com:andovnar2021/terraform-modules.git//aws_security_group"

}

