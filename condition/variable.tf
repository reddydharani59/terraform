variable "image_id" {
    default = "ami-090252cbe067a9e58"
    type = string
}

variable "instance_name" {
    default = "db"
    type = string
}

variable "tags" {
    default = {
        Name = "db"
        environment = "dev"
        module = "db"
    }
}


variable "sg_name" {
    default = "allow_ssh"
    
}

variable "description_sg" {
    default = "allowing ssh"

}

variable "port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
    type = string

}
variable "allow_cidir" {
      default = ["0.0.0.0/0"]
        
}
 