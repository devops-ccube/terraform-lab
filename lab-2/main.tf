provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3lab" {
  bucket = "s3lab-test-ccube"
  acl = "public-read"
  region = "us-east-1"
tags {
    Name = "s3lab"
}
}

resource "aws_s3_bucket_object" "uploadfile" {
    bucket = "${aws_s3_bucket.s3lab.id}"
    source = "test.txt"
    key = "tf"
    //content = "application/json"
}

module "vault" {
  source  = "hashicorp/vault/aws"
  version = "0.11.3"

  # insert the 4 required variables here
}