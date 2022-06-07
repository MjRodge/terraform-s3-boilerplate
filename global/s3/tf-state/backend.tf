terraform {
  backend "s3" {
    bucket         = "<ENTER-YOUR-BUCKET-NAME-HERE>"
    key            = "global/s3/tf-state/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "<ENTER-YOUR-DYNAMODB-NAME-HERE>"
    encrypt        = true
  }
}