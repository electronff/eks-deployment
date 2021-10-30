#variable "aws_access_key" {}

#variable "aws_secret_key" {}

// variable "ssh_key_name" {}

// variable "private_key_path" {}


variable "aws_region" {
  default = "us-east-1"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
