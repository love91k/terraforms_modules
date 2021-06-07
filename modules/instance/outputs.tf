output "address" {
  value = aws_elb.web.dns_name
}
output "private_ip" {
  value = aws_instance.web.private_ip
}
