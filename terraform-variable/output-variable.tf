# Each output value exported by a module must be declared using an output block:

output "instance_ip_addr" {
  value = aws_instance.server.private_ip
}
