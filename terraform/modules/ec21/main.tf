resource "aws_instance" "ec21" {
    ami = var.ami_ec2
    instance_type = var.tipo_instancia
    key_name = var.llave
    security_groups = [var.sg_ec2]
    subnet_id = var.subnet
    tags ={
        Name=var.ec2_name
    }
    associate_public_ip_address = true
  
}