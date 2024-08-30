ssh_sg_name                  = "ssh_security_group"
jenkins_sg_name = "jenkins_security_group"
ingress_with_cidr_blocks_ssh = [{ from_port = 22, to_port = 22, protocol = "tcp", description = "For Ssh from local", cidr_blocks = "136.226.230.111/32" }]
ingress_with_cidr_blocks_jenkins = [{ from_port = 8080, to_port = 8080, protocol = "tcp", description = "Jenkins-port", cidr_blocks = "136.226.230.111/32" }]
