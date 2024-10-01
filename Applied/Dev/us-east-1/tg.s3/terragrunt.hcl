include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../..//Infrastructure/tg.s3"
}
