terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
}


module "security-groups" {
  source = "./modules/security-groups"
  vpc_id = "${module.vpc.out_vpc_id}"
  vpc_cidr_block = "${module.vpc.out_vpc_cidr_block}"
}

module "instance" {
  source = "./modules/instance"
  vpc_id = "${module.vpc.out_vpc_id}"
  vpc_cidr_block = "${module.vpc.out_vpc_cidr_block}"
  vpc_subnet_id = "${module.vpc.out_aws_subnet_id}"
  sg_elb_id = "${module.security-groups.out_sg_elb_id}"
  sg_default_id = "${module.security-groups.out_sg_default_id}"
  user_data_path = "${var.user_data_path}"
  key_name = "${var.user_data_path}"
  elb_name = "${var.elb_name}"
  aws_amis = "${var.aws_amis}"
  public_key_path ="${var.public_key_path}"
  aws_region= "${var.aws_region}"
}
