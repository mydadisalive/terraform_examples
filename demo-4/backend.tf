terraform {
  backend "s3" {
    bucket = "terraform-state-f2f2f2"
    key = "terraform/demo4"
  }
}
