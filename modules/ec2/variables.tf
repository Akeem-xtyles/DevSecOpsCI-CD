variable "instance_type" {
    type = string
    description = "The type of ec2 instance"
}

variable "ami" {
    type = string
    description = "The ami ID for the ec2 instance"
}

variable "tags" {
    type = map(string)
    description = ""
}