output "server_ip" {
  description = "The public IP address of our new server"
  value       = aws_instance.example.public_ip
}