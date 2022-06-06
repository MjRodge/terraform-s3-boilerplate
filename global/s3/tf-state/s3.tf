# Configure an S3 bucket resource to hold application state files
resource "aws_s3_bucket" "terraform_state" {
  bucket = "<ENTER-A-GLOBALLY-UNIQUE-BUCKET-NAME-HERE>"  
  # Add bucket versioning for state rollback
  versioning {
    enabled = true
  }
  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}