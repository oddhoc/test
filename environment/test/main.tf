terraform {
  backend "s3" {
    #bucket         = "dsva-shared-terraform-remote-state" # prod govcloud
    bucket         = "dsva-shared-terraform-remote-state-testgovcloud" # test-govcloud
    key            = "terraform.tfstate.dsva-global"
    dynamodb_table = "dsva-shared-terraform-lock"
    region         = "us-gov-west-1"
    encrypt        = true
    profile        = "dsva-test"
  }
}

variable "account" {
  #default = "008577686731" #prod govcloud
  default = "268171240745" #test govcloud account (dsva-vetsgov)
}

provider "aws" {
  version = "~> 2.0"
  region  = "us-gov-west-1"
}

