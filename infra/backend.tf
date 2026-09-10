terraform {
  backend "s3" {
    bucket         = "tamal-sre-platform-tfstate"  # same name as bootstrap
    key            = "project1/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "sre-platform-tf-lock"
    encrypt        = true
  }
}
