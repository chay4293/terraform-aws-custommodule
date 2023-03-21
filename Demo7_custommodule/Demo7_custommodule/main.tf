provider "aws" {
  region = "eu-west-1"
  access_key= "AKIAZTIMJ7JHGTU6QE6W"
  secret_key= "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"
}

module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "tfgtkc-bucket-21april"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
