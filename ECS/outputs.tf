output "instance_ip_addr" {
    value = aws_instance.ECS.private_ip
}