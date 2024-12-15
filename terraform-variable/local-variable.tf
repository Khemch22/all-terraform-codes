# Local variables are declared using the locals block. The values can be hard-coded or be a reference to another variable or resource.

locals {
  ami  = "ami-0d26eb3972b7f8c96"
  type = "t2.micro"
  tags = {
    Name = "Web Server"
    Env  = "Dev"
  }
  subnet = "subnet-76a8163a"
  nic    = aws_network_interface.my_nic.id
}

resource "aws_instance" "webserver" {
  ami           = local.ami
  instance_type = local.type
  tags          = local.tags

  network_interface {
    network_interface_id = aws_network_interface.my_nic.id
    device_index         = 0
  }
}

