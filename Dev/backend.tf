terraform {
  backend "s3" {
    bucket         = "devopsb28terraformstate"
    key            = "modules-devopsb28.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt        = true
  }
}
