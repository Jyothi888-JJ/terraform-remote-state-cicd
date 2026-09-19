resource "aws_s3_bucket" "demo" {
  bucket = "your-unique-demo-bucket-name"

  tags = {
    Name        = "terraform-demo"
    Environment = "dev"
  }
}
