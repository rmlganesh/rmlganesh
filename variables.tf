variable "aws_region" {
  default     = "ap-southeast-1"
}

variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}


# Need to provide a Red-Hat based image
variable "aws_ami" {
  default = "ami-76144b0a"
}

variable "aws_instance_type" {
  default     = "m3.medium"
}
