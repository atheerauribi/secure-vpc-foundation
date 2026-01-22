variable "aws_region" {
  description = "AWS region to deploy the VPC into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name prefix for resources"
  type        = string
  default     = "megazone-task"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
  default = [
    "10.0.0.0/20",
    "10.0.16.0/20"
  ]
}

variable "app_subnet_cidrs" {
  description = "CIDR blocks for private application subnets"
  type        = list(string)
  default = [
    "10.0.32.0/20",
    "10.0.48.0/20"
  ]
}

variable "data_subnet_cidrs" {
  description = "CIDR blocks for private data subnets"
  type        = list(string)
  default = [
    "10.0.64.0/20",
    "10.0.80.0/20"
  ]
}

