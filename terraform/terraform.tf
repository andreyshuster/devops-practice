
terraform {
  backend "s3" {
    bucket = "tf-state-backend-uquair8n"
    key = "terraform.tfstate"
    region = "eu-central-1"

    dynamodb_table = "terraform-statelock"
    encrypt = true
  }
}