terraform {
  backend "s3" {
    bucket = "s3statebucket2024"
    dynamodb_table = "state-lock"
    key = "global/mystatefile/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}