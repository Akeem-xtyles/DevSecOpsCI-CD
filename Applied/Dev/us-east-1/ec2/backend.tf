terraform {
  backend "s3" {
    bucket = "akeem-xtyles-bucket"
    key    = "path/to/my/folders"
    region = "us-east-1"
  }
}
