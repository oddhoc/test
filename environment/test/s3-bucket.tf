module "bucket" {
  source = "../../modules/s3-bucket"
  name   = "test-bucket"
}
