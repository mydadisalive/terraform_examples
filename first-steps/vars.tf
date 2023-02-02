variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
  type = "map"
  default = [
    us-east-1 = "ami-0b0ea68c435eb488d"
    us-west-1 = "ami-0454207e5367abf01"
    eu-west-1 = "ami-0f29c8402f8cce65c"
  ]
}
