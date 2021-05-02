
instance_tenancy  = "default"
key_name          = "mymacbook key"
ssh_key_path      = "~/.ssh/id_rsa.pub"
region            = "us-east-1"

map_public_ip_on_launch = true 
security_group_name     = "allow ssh and http new one"

security_group_description = "It will allow ssh and http connection new one"

prefix        = "Dev"
instance_type = "t2.micro"
vpc_id    = "vpc-3cc76141"
subnet_id = "subnet-8178a6b0"
domain = "devopstechskills.com"
record = "jenkins"
