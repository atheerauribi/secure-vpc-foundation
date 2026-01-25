output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "app_subnet_ids" {
  description = "List of application tier subnet IDs"
  value       = aws_subnet.app[*].id
}

output "data_subnet_ids" {
  description = "List of data tier subnet IDs"
  value       = aws_subnet.data[*].id
}



