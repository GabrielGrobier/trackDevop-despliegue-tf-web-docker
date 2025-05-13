module "provider" {
    source = "./modules/provider"
    region = local.region
}
module "security_groups" {
    source = "./modules/SG_EC2"
    vpc_id = local.vpc_id
    sg_name = "sg_ec21"
  
}
module "Ec21" {
    source = "./modules/ec21"
    subnet = local.subnet
    ec2_name = "ec2-modulos"
    ami_ec2 = "ami-0f88e80871fd81e91"
    sg_ec2 = module.security_groups.id_sg_principal
  
}
