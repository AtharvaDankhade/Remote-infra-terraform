terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "5.91.0"
    }
  }

  backend "s3" {
    bucket = "remote-infra-bucket-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "remote-infra-table"
    use_lockfile = true
  }

}