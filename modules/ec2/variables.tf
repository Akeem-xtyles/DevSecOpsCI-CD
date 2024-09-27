variable "instance_type" {
    type = list(string)
    description = "The type of ec2 instance"
}

variable "ami_id" {
    type = string
    description = "The ami ID for the ec2 instance"
}

variable "tags" {
    type = map(string)
    description = ""
}