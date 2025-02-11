terraform {
  backend "s3" {
    bucket = "state-project-bucketss"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}