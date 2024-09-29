terraform {
  backend "s3" {
    bucket = "tech-challenge-fase-3"
    key    = "rds/terraform.tfstate"
    region = "us-east-1"
  }
}
