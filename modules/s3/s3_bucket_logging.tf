#This is the configuration for server access logging
resource "aws_s3_bucket_logging" "project_union_logging" {
  bucket = aws_s3_bucket.project_union_s3.id

  target_bucket = aws_s3_bucket.project_union_s3_logging.id
  target_prefix = "log/"
}


#This bucket logs files from the main bucket above
resource "aws_s3_bucket" "project_union_s3_logging" {
  bucket = var.logging_bucket_name
}

resource "aws_s3_bucket_acl" "project_union_s3_logging" {
  bucket = aws_s3_bucket.project_union_s3_logging.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "project_union_s3_logging" {
  bucket = aws_s3_bucket.project_union_s3_logging.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encrypt_logging_s3_bucket" {
  bucket = aws_s3_bucket.project_union_s3_logging.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.logging_kms_key_id
      sse_algorithm     = "aws:kms"
    }
  }
} 



resource "aws_s3_bucket_policy" "allow_to_receive_logs" {
  bucket = aws_s3_bucket.project_union_s3_logging.id
  policy = var.s3_bucket_policy
}
