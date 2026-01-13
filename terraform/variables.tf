variable "aws_region" {
  description = "AWS region to deploy EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "vpc_id" {
  description = "VPC ID to launch instance in"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch instance in"
  type        = string
}


variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  type        = string
  default     = "ami-0c02fb55956c7d316" # us-east-1
}
