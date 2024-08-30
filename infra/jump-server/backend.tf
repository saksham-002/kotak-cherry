terraform {
  backend "s3" {
    bucket         = "kotak-cherry-bucket"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-file"
  }
}