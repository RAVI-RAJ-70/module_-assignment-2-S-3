resource "aws_s3_bucket" "bucket01" {
  bucket = var.bucket_name
  /* acl    = "private" */

  tags = var.s3_tags
}