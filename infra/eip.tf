resource "aws_eip" "k3s_node" {
  domain   = "vpc"
  instance = aws_instance.k3s_node.id
  tags     = { Name = "sre-platform-eip" }
}
