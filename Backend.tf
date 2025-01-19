#A-backend
# Create an S3 bucket for storing syslog data

resource "aws_s3_bucket" "syslog_bucket" {
  bucket = "my-syslog-bucket"
  }
resource "aws_s3_bucket_ownership_controls" "syslog_bucket_ownership" {
  bucket = aws_s3_bucket.syslog_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "syslog_bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.syslog_bucket_ownership]
  
  bucket = aws_s3_bucket.syslog_bucket.id
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket_versioning" "syslog_bucket_versioning" {
  bucket = aws_s3_bucket.syslog_bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "syslog_bucket_encryption" {
  bucket = aws_s3_bucket.syslog_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = "alias/aws/s3"
      sse_algorithm     = "aws:kms"
    }
  }
}


  /*server_side_encryption_configuration {
    
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "alias/aws/s3"
        sse_algorithm     = "aws:kms"
      }
    }
  }*/


  # S3 bucket logging configuration
resource "aws_s3_bucket_logging" "syslog_bucket_logging" {
  bucket        = aws_s3_bucket.syslog_bucket.id
  target_bucket = aws_s3_bucket.syslog_bucket.id
  target_prefix = "syslog-logs/"
}

# VPC resource (separate from S3 configuration)
resource "aws_vpc" "Tokyo_syslog" {
  cidr_block           = "10.20.13.0/24"
  enable_dns_hostnames = true  # Optional: enables DNS hostnames in the VPC
  enable_dns_support   = true  # Optional: enables DNS support in the VPC
  
  tags = {
    Name = "Tokyo-Syslog-VPC"
  }
}

# If you need resources in specific availability zones, create subnets:
resource "aws_subnet" "tokyo_subnet" {
  vpc_id            = aws_vpc.Tokyo_syslog.id
  cidr_block        = "10.20.13.0/25"  # Subset of the VPC CIDR
  availability_zone = "ap-northeast-1c"
  
  tags = {
    Name = "Tokyo-Syslog-Subnet"
  }
}



