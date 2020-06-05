resource "aws_s3_bucket" "all_purpose_bin" {
    bucket = "tf-configured-all-purpose-bucket"
    acl = "private"

    tags = {
        Name = "My first bucket"
        Environment = "Dev"
    }
}