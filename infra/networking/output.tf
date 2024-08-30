output "vpc" {
  description = " VPC ID"
  value       = module.vpc
}

output "vpcId" {
  description = " VPC ID"
  value       = module.vpc.vpc_id
}
