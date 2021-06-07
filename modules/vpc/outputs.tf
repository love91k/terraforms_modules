output "out_vpc_id" {
  value = "${aws_vpc.default.id}"
}
output "out_vpc_cidr_block" {
  value = "${aws_vpc.default.cidr_block}"
}

output "out_aws_subnet_id" {
  value = aws_subnet.default.id
}
