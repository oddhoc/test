module "bucket" {
  source = "../../modules/s3-bucket"
  name   = "atlantis-demo-bucket"
}
