#resource type and resource type
resource "aws_security_group" "allow-ssh" {

    name = "allow-ssh"
    description = "allowing ssh access"
 

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # -1 is all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {

    Name = "allow_ssh"
    created_by = "dharani"
  }
}

resource "aws_instance" "db" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  instance_type = "t3.micro"

  tags = {
    Name = "db"
  }
}