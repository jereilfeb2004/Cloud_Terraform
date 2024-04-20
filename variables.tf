variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "172.16.1.0/24"  # Assigning the CIDR block 172.16.1.0/24 by default
}

variable "public_subnets_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for the public subnets"
  default     = ["172.16.1.0/26", "172.16.1.64/26", "172.16.1.128/26"]  # Example CIDR blocks for 3 AZs
}

variable "private_subnets_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for the private subnets"
  default     = ["172.16.1.192/26", "172.16.1.192/26", "172.16.1.192/26"]  # Example CIDR blocks for 3 AZs
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for the subnets"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]  # Example availability zones
}
