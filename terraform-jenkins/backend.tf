terraform {
  backend "s3" {
    bucket = "terraform-state-files-zsalieva"
    key    = "tfstate/jenkins.tfstate"
    region = "us-east-1"
  }
}


