output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.eks-vpc.id
}

output "subnet_ids" {
  description = "Subnet details"
  #value = aws_subnet.eks-subnets[*].id
  value = [ for subnet in aws_subnet.eks-subnets: subnet.id ]
}

