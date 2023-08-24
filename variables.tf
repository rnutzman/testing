
variable aws_region {
  description = "Region to build this Infrastructure"
  default = "us-east-2"
}

# VPC Variables
variable "aws_subnet_cnt" {
  default = 2
}

variable "aws_subnets" {
  type    = list
  default = ["eks-subnet-1", "eks-subnet-2", "eks-subnet-3"]
}

variable "aws_subnet_cidr" {
  default = {
    "eks-subnet-1" = "10.0.1.0/24"
    "eks-subnet-2" = "10.0.2.0/24"
    "eks-subnet-3" = "10.0.3.0/24"
  }
}

variable "aws_subnet_az" {
  default = {
    "eks-subnet-1" = "use2-az1"
    "eks-subnet-2" = "use2-az2"
    "eks-subnet-3" = "use2-az3"
  }
}
