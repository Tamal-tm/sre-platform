output "public_ip" {
  value = aws_eip.k3s_node.public_ip
}

output "ssh_command" {
  value = "ssh -i sre-platform-key.pem ubuntu@${aws_eip.k3s_node.public_ip}"
}

output "instance_id" {
  value = aws_instance.k3s_node.id
}
