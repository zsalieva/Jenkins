terraform {
  backend "s3" {
    bucket = "terraform-state-files-zsalieva"
    key    = "tfstate/vpc-module.tfstate"
    region = "us-east-1"
  }
}