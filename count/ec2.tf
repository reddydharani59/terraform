#resource type and resource type


resource "aws_instance" "db" {
  ami = "ami-090252cbe067a9e58"

  #count = 3
  count = length(var.instance_name)

  instance_type = var.instance_name[count.index]== "db" ? "t2.micro" : "t2.small"

 tags = {
  Name = var.instance_name[count.index]
}
}

resource "aws_security_group" "allow-ssh" {

    name = var.sg_name
    description = var.description_sg
 

  ingress {
    from_port        = var.port
    to_port          = var.port
    protocol         = var.protocol
    cidr_blocks      = var.allow_cidir
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # -1 is all protocols
    cidr_blocks      = var.allow_cidir
  }

  tags = {

    Name = "allow_ssh"
    created_by = "dharani"
  }
}