#resource type 


resource "aws_instance" "expense" {
  ami = data.aws_ami.ami_id.id
  for_each = var.instance_names
  

  instance_type = each.value

 
 tags = merge(
  var.common_tags,
  {
   Name = "${each.key}"
   Module = "${each.key}"
 
  }
)


}

