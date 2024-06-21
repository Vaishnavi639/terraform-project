####################Configuration with Backend[remote storage]#####
terraform {
  backend "s3" {
    bucket         = "vaish-remote-storage-terraform"
    key            = "ec2-instance/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "remote_storage_locks"
    encrypt        = true
  }
}

