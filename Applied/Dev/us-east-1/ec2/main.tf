resource "aws_instance" "my_first_instance"{
    for_each ={
        instance1 = {
            ami = "ami-066784287e358dad1"
            instance_type = "t2.micro"
        }
        instance2 = {
            ami = "ami-066784287e358dad1"
            instance_type = "t2.small"
        }
        instance3 = {
            ami = "ami-066784287e358dad1"
            instance_type = "t2.medium"
        }
    }

    instance_type = each.value.instance_type
    ami = each.value.ami
    
    tags = {
        Name = each.key
    }
}