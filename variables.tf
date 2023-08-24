
variable aws_region {
  description = "Region to build this Infrastructure"
  default = "us-east-2"
}

# VPC Variables
variable "aws_subnet_cnt" {
  description "Number of subnets to create (1 to 3)"
  default = 2
}

variable "aws_subnets" {
  description "Subnet names"
  type    = list
  default = ["eks-subnet-1", "eks-subnet-2", "eks-subnet-3"]
}

variable "aws_subnet_cidr" {
  description "Subnet cidr blocks"
  # probably want to make this mor dynamic
  default = {
    "eks-subnet-1" = "10.0.1.0/24"
    "eks-subnet-2" = "10.0.2.0/24"
    "eks-subnet-3" = "10.0.3.0/24"
  }
}

variable "aws_subnet_az" {
  description "List of availability zones to use"
  default = {
    "eks-subnet-1" = "use2-az1"
    "eks-subnet-2" = "use2-az2"
    "eks-subnet-3" = "use2-az3"
  }
}

