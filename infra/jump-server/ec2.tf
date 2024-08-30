data "aws_subnet" "selected_subnet" {
  filter {
    name   = "tag:Name"
    values = ["infra-vpc-public-ap-south-1a"]
  }
}

data "aws_security_group" "jenkins_security_group" {
  count = 1

  tags = {
    Name = "jenkins_security_group"
  }
}

data "aws_security_group" "ssh_security_group" {
  count = 1

  tags = {
    Name = "ssh_security_group"
  }
}


module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = var.bastion_name
  iam_instance_profile   = aws_iam_instance_profile.bastion-profile.name
  ami                    = var.bastion_ami_id
  instance_type          = var.bastion_instance_type
  key_name               = var.bastion_key_name
  monitoring             = false
  vpc_security_group_ids = [data.aws_security_group.jenkins_security_group[0].id,data.aws_security_group.ssh_security_group[0].id]
  subnet_id              = data.aws_subnet.selected_subnet.id
  associate_public_ip_address = true
  root_block_device	 = [{
      delete_on_termination = true
      volume_size           = 20
      volume_type           = "gp3"
  }]


  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
}
