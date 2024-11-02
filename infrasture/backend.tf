terraform {
  backend "s3" {
    bucket = "my-storage-work"
    region = "us-east-1"
    key    = "remoteserver-backend/terraform.tfstate"
  }
}