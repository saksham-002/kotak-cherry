resource "aws_eip" "bastion-eip" {
  instance = module.ec2_instance.id
  vpc      = true
}
