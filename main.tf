data "aws_availability_zones" "azs" {
  filter {
    name = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

data "aws_ec2_instance_type_offerings" "az-instance-checker" {
  for_each = toset(data.aws_availability_zones.azs.names)
  filter {
    name = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name = "location"
    values = [each.value] 
  }
  location_type = "availability-zone"
}