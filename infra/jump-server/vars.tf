variable "bastion_name" {
  type        = string
  description = "Enter the instance name"
  default     = "jump-server"
}
variable "bastion_ami_id" {
  type        = string
  description = "Enter the ami id"
  default     = "ami-0000791bad666add5"
}
variable "bastion_instance_type" {
  type        = string
  description = "Enter the instance_type"
  default     = "t3a.medium"
}

variable "bastion_availability_zone" {
  type        = list(any)
  description = "Enter the availability zone"
}


variable "bastion_key_name" {
  type        = string
  description = "Enter the key name"
  default     = "vpc-key"
}

variable "bastion_instance_name" {
  type        = string
  description = "Enter the instance name"
  default     = "bastion_host"
}


variable "default_tags" {
  type = map(any)
  default = {
    Team  = "cherry"
    Usage = "task"
  }
  description = "Enter the tags"
}
