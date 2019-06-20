output "public_subnets" {
  value = "${aws_subnet.tf_public_subnet.*.id}"
}
