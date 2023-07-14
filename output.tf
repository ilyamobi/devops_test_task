output "public_ip" {
  value       = aws_instance.app_server.public_ip
  description = "Public IP Address of EC2 instance"
}

output "instance_id" {
  value       = aws_instance.app_server.id
  description = "Instance ID"
}
