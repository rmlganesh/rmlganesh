variable "aws_region" {
  default     = "ap-southeast-1"
}

variable "aws_access_key" {
  default = "AKIAR5TKHV4IJ54BJ6XO"
}

variable "aws_secret_key" {
  default = "G/JjPb2GyrdcWtStj9K032dGOyIkOe9CtPPAHJ2X"
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
