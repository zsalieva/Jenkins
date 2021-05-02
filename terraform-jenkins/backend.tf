terraform {
  backend "s3" {
    bucket = "terraform-state-files-mcalik"
    key    = "tfstate/jenkins.tfstate"
    region = "us-east-1"
  }
}


