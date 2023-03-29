module "vpc" {
  source = "../"

  aws_region = "us-east-1"
  aws_zones = ["us-east-1a"]
  vpc_name = "tf-vpc"
  vpc_cidr = "10.0.0.0/16"
#  private_subnets = "true"

  ## Tags
  tags = {
    Hello = "World"
  }
}

output "vpc" {
  value = module.vpc.vpc_id
}

output "subnets" {
  value = module.vpc.subnet_ids
}

output "private_subnets" {
  value = module.vpc.private_subnet_ids
}
