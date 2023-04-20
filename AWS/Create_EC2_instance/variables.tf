variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ami" {
  type = string
  description = "AMI ID is given here"
  default = "ami-06e46074ae430fba6"
}

variable "tags" {
  type = object({
    Name = string
  })
}