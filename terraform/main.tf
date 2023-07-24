module "vpc" {
  source = "../child_modules"
  env = "DEV"
  rgc = "MUM"
  cid = "PID"
  vpc_cidr = "10.32.0.0/16"
  region = "ap-south-1"
  managed_by = "BTF"
  public_subnet_cidr = ["10.32.1.0/24","10.32.2.0/24","10.32.3.0/24"]
  public_availability_zone = ["ap-south-1a","ap-south-1b","ap-south-1c"]

  nat_private_subnet_cidr = ["10.32.51.0/24","10.32.52.0/24","10.32.53.0/24"]
  nat_private_subnet_availability_zone = ["ap-south-1a","ap-south-1b","ap-south-1c"]

  private_subnet_cidr = ["10.32.101.0/24","10.32.102.0/24","10.32.103.0/24"]
  private_subnet_availability_zone = ["ap-south-1a","ap-south-1b","ap-south-1c"]
}