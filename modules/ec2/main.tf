resource "aws_instance" "my_first_instance" {
  for_each = toset (var.instance_type)

  instance_type = each.key
  ami           = var.ami_id
  tags          = var.tags

}