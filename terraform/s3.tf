resource "aws_s3_bucket" "all_purpose_bin" {
    bucket = "tf-configured-all-purpose-bucket"
    acl = "private"

    tags = {
        Name = "My first bucket"
        Environment = "Dev"
    }
}

# tfstate backend
resource "aws_s3_bucket" "tf_state_backend" {
    bucket = "tf-state-backend-uquair8n"
    acl = "private"

    versioning {
        enabled = true
    }

    tags = {
        Name = "TF State bucket"
        Environment = "Dev"
    }
}
