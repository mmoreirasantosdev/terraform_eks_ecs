module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

  name = "shared-vpc"
  cidr = "10.0.0.0/16"

  azs = ["us-east-1a", "us-east-1b"]

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Project = "eks-ecs-lattice"
  }
}
