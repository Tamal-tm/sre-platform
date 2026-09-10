variable "region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "my_ip_cidr" {
  description = "Your public IP in CIDR form, e.g. 103.21.45.10/32"
  type        = string
}
