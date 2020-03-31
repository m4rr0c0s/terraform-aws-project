#-----storage/main.tf-----

# Create a random ID
resource "random_id" "number" {
  byte_length = 2
}

# Create the bucket
resource "aws_s3_bucket" "code" {
  bucket        = "${var.bucket_name}-${random_id.number.dec}"
  acl           = "private"
  force_destroy = true

  tags = var.s3_tags
}