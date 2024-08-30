output "ec2_instance" {
  value       = module.ec2_instance
}

output "ec2_instanceid" {
  value       = module.ec2_instance.id
}

output "ec2_publicip" {
  value       = resource.aws_eip.bastion-eip.public_ip
}

output "ec2_privateip" {
  value       = module.ec2_instance.private_ip
}
