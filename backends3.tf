resource "aws_s3_bucket" "my_bucket" {
  bucket = "s3configsmarti" # Replace with a globally unique bucket name

  versioning {
    enabled = true
  }

  tags = {
    Name        = "s3configsmarti"
    Environment = "Prod"
    Project     = "My Project"
  }


}

terraform {
  backend "s3" {
    bucket = "s3configsmarti"
    key    = "terraform.tfstate" # Replace with a custom name if desired
    region = "eu-central-1"      # Replace with your AWS region (e.g., us-west-2)
  }
}





