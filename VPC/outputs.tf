output "instance_ip_addr" {
   value = { for service, i in aws_instance.example : service => i.private_ip}
}