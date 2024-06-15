provider "aws" {
  region = "ap-south-1"  

####################Create S3 Bucket################################



resource "aws_s3_bucket" "example" {
  bucket = "remote-storage-terraform"

  tags = {
    Name        = "vaish-remote-storage-terraform"
    Environment = "Production"
    Project     = "RemoteStorage"
  }
}

#################Create DynamoDb table#############################



resource "aws_dynamodb_table" "lock_table" {
  name           = "remote_storage_locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"  
  }

  tags = {
    Environment = "Production"
    Project     = "RemoteStorage"
  }
}



  

