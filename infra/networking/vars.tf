variable "vpc_name" {
  type        = string
  default     = "infra-vpc"
  description = "Enter VPC name"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "VPC CIRD"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24"]
  description = "PUBLIC subnet CIDR"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  default     = ["10.10.3.0/24", "10.10.4.0/24"]
  description = "PRIVATE subnet CIDR"
}


variable "az" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
  description = "Availability Zones"
}


variable "default_tags" {
  type = map(any)
  default = {
    Team  = "cherry-devops"
    Usage = "task"
  }
  description = "Enter the tags"
}
