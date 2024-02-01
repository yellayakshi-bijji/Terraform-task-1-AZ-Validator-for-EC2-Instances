variable "aws_region" {
  description = "Region in which AWS Resources are to be created"
  type        = list(string)
  default     = ["us-east-1", "us-east-2", "us-west-1"]
}