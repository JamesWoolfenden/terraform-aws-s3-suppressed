resource "aws_s3_bucket" "logging" {
  # tfsec:ignore:AWS077
  # checkov:skip=CKV_AWS_145: ADD REASON
  # checkov:skip=CKV_AWS_144: ADD REASON
  # bridgecrew:skip=CKV_AWS_18:This is a logging bucket
  # bridgecrew:skip=CKV_AWS_21:Versioning for logs? Yeah no
  # bridgecrew:skip=CKV_AWS_52:MFA requirement breaks tf
  # checkov:skip=CKV2_AWS_6:too restrictive
  acl    = "log-delivery-write"
  bucket = "logging-${data.aws_caller_identity.current.account_id}"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  versioning {
    enabled    = false
    mfa_delete = false
  }

  tags = var.common_tags
}
