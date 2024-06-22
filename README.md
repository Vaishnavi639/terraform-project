# Terraform Project: EC2 Instance with Remote State Storage #

This project demonstrates the creation of an EC2 instance using Terraform with state management via an S3 bucket and DynamoDB table. The state files are stored in an S3 bucket, and the bucket is locked using a DynamoDB table to ensure consistency.The project is organized into two main directories: local_state and remote_state.

## Project Structure ##

![prostrct](https://github.com/Vaishnavi639/terraform-project/assets/127540530/edcc2383-b516-40ea-8cf5-eff983b3bf18)

## Directories and Files ##

**1. local_state**
* main.tf: Contains the Terraform configuration code for creating an EC2 instance. It also includes the configuration for setting up an S3 bucket and a DynamoDB table for remote state management.
  
**2. remote_state**
* backend.tf: Configures the remote state backend for the EC2 instance, pointing to the S3 bucket and DynamoDB table.
configfile/
* main.tf: Contains the Terraform configuration code for creating the S3 bucket and DynamoDB table used for remote state management.
* outputs.tf: Outputs the S3 bucket name, bucket ARN, bucket region, DynamoDB table name, and table ARN.

## Usage ##

**Prerequisites**
Terraform installed on your local machine.
AWS CLI configured with appropriate credentials.

## Steps ##

**1. Navigate to the remote_state/configfile directory:**

command:


     cd terraform-project/remote_state/configfile


**2. Initialize and plan terraform:**

command:


    terraform init
    terraform plan


 
 **3. Apply the configuration to set up the S3 bucket and DynamoDB table:**

  command:

      terraform apply

**4. Navigate to the remote_state directory:**

command:

    cd terraform-project/remote_state


**5. Initialize,plan and apply terraform**

command:

    terraform init
    terraform plan
    terraform apply

**6. Navigate to the local_state directory:**

command:

    cd terraform-project/local_state


**7. Initialize,plan and apply the configuration to create the EC2 instance and the remote state resources**

command:

    terraform init
    terraform plan 
    terraform apply

## Output ##

After applying the configurations, you will have:

* An EC2 instance created.
* State files stored in an S3 bucket.
* DynamoDB table used for state locking.

## Output Details (from outputs.tf): ##
* S3 Bucket Name
* S3 Bucket ARN
* S3 Bucket Region
* DynamoDB Table Name
* DynamoDB Table ARN

## References ##
HashiCorp AWS Provider Documentation :- https://registry.terraform.io/providers/hashicorp/aws/latest/docs

**Can checkout the demo of this project on :-** https://www.linkedin.com/feed/update/urn:li:activity:7210362998895312896/






  




  
