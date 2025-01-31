terraform {
  backend "s3" {
    bucket = "your-s3-bucket-name"
    key    = "terraform/state/dev/argocd-apps/terraform.tfstate"
    region = "your-region"
  }
}
