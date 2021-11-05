
variable "aws_region" {
  default = "us-east-1"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
terraform {
 backend "s3" {
 bucket = "actionstate"
 key    = "actionstate.tfstate"
 region = "us-east-1"
 }
}
