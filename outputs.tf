output "validation-results" {
  value = keys({for az, t in data.aws_ec2_instance_type_offerings.az-instance-checker: 
  az => t.instance_types if length(t.instance_types) != 0})
}