variable "bucket_name" {
    type = string
    description = ""
}

variable "kms_key_id" {
    type = string
    description = ""
}

variable "logging_bucket_name" {
    type = string
    description = ""
}

variable "logging_kms_key_id" {
    type = string
    description = ""
}

variable "s3_bucket_policy" {
    type = string
    description = ""
}