# resource "null_resource" "sleep" {


#   provisioner "local-exec" {
#     # Bootstrap script called with private_ip of each node in the clutser
#     command = "sleep 300"
#   }
# }

provider "aws" {
  region     = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ptfe" {

  ami                    = "ami-0be057a22c63962cb"
  instance_type          = "t2.micro"
  tags = {
    Name = "Yaro"
  }

  }

  variable "access_key" {
  type = string
}

 variable "secret_key" {
  type = string
}