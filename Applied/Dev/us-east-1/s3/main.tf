module "s3" {
    source = "../../../..//modules/s3"

    bucket_name = "project_union_s3_bucket"
    kms_key_id = ""
    logging_bucket_name = "project_union_s3_bucket_access_logs"
    logging_kms_key_id = ""
    s3_bucket_policy = data.aws_iam_policy_document.allow_to_receive_logs.json
}



data "aws_iam_policy_document" "allow_to_receive_logs" {
  statement {
    actions = ["s3:PutObject", "s3:PutBucketAcl"]

    resources = ["$arn:aws:s3:::project_union_s3_bucket_access_logs/*"]

    principals {
      type        = "Service"
      identifiers = ["logging.s3.amazonaws.com"]
    }
  }
}
