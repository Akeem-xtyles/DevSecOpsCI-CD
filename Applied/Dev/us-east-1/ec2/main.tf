module "ec2" {
    source = "../../../..//modules/ec2"

    instance_type = ["t2.micro", "t2.small"]
    ami_id        = "ami-0182f373e66f89c85"
    tags          = {
        Name = "Project Union"
    }
}