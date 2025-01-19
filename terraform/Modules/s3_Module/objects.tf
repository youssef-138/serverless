
resource "aws_s3_bucket_object" "index" {
  
  bucket        = aws_s3_bucket.this.bucket
  key           = "index.html"
  source        = var.index_source_path
  content_type  = "text/html"
}

resource "aws_s3_bucket_object" "scripts" {
  
  bucket        = aws_s3_bucket.this.bucket
  key           = "scripts.js"
  source        = var.scripts_source_path
  content_type  = "text/javascript"
}