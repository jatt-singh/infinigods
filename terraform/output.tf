output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "public_dns" {
  value = aws_instance.ec2_instance.public_dns
}

output "ecr_uri" {
  value = aws_ecr_repository.test.repository_url
}
