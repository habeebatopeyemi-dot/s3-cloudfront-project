module "s3" {
    source = "./s3"
    bucket_name = "s3-terraform-project-1"
    environment = "dev"
}

module "s3-cloudfront" {
    source = "./s3-cloudfront"
     bucket_name = "s3-cloudfront-terraform-project"
    environment = "dev"
}