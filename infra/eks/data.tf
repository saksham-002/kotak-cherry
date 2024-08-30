data "terraform_remote_state" "networking" {
  backend = "s3"
  config = {
    bucket = "kotak-cherry-bucket"
    key    = "networking/terraform.tfstate"
    region = "ap-south-1"

  }
}
