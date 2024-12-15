# We can overide the default values using terraform varfile name

aws_region     = "us-east-1"
instance_type  = "t3.micro"
vpc_cidr       = "192.168.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]
tags = {
  Environment = "production"
  Team        = "DevOps"
}
