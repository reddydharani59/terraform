output "ec2_instances" {
 value = aws_instance.expense
}

output "vpc" {
    value = data.aws_vpc.default
}