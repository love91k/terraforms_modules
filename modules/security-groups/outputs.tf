#out varibales for security groups
output "out_sg_elb_id" {
  value = [aws_security_group.elb.id]
}
output "out_sg_default_id" {
  value = [aws_security_group.default.id]
}
