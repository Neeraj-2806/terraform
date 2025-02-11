resource "aws_s3_bucket" "project_bucket" {
    bucket = "state-project-bucketss"
    
}
resource "aws_s3_bucket_versioning" "versoning" {
    bucket = aws_s3_bucket.project_bucket.id 
    versioning_configuration {
      status = "Enabled"
    }
  
}
