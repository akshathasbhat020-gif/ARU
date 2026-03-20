provider "aws" {
    region = "ap-northeast-2"
    access_key = ""
    secret_key = ""
    }
resource "aws_s3_bucket" "Terraform-bucket" {
    bucket = "terraform-Akshatha-2024"
}