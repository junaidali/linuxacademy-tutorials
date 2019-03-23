#-- root/variables
variable "aws_region" {}

#-- storage
variable "project_name" {}

#-- network
variable "vpc_cidr" {}
variable "public_cidrs" {
    type = "list"
}
variable "accessip" {}