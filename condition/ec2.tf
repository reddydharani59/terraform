#resource type and resource type


resource "aws_instance" "db" {
  ami = "ami-090252cbe067a9e58"

  

  instance_type = var.instance_name == "db" ? "t2.micro" : "t2.small"

 tags = var.tags
}