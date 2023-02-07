# Elastic IP Address Allocated
output "eip" {
  value = aws_eip.static_eip.public_ip
}