region              = "ap-south-1"
cluster_name        = "kotak-cherry-eks"
eks_node_sg_name    = "kotak-cherry-eks-node-sg"
eks_node_group_name = "kotak-cherry-eks-ng"
w1_instance_type    = ["t3a.medium"]
w1_disk_size        = 50
w1_max_capacity     = 1
w1_desired_capacity = 1
w1_min_capacity     = 1
w1_capacity_type    = "SPOT"
eks_cluster_version = "1.27"
ssh_key             = "cherry-key"
ami_type            = "AL2_x86_64"
