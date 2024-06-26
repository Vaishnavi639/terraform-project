data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240423"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "web" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform"
  }
}

terraform {
  backend "s3" {
    bucket         = "vaish-remote-storage-terraform"
    key            = "ec2-instance/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "remote_storage_locks"
    encrypt        = true
  }
}

