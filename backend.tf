# create s3
resource "aws_s3_bucket" "mybucket" {
  bucket = "s3statebucket2024"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

#create dynamodb
resource "aws_dynamodb_table" "statelock"{
    name = "state-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
}