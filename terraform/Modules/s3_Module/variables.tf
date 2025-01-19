variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "bucket_acl" {
  description = "The ACL for the S3 bucket."
  type        = string
  default     = "private"
}

variable "index_document" {
  description = "The default index document for the bucket."
  type        = string
  default     = "index.html"
}


variable "index_source_path" {
  description = "Path to the source of the index.html file."
  type        = string
}

variable "scripts_source_path" {
  description = "Path to the source of the scripts.js file."
  type        = string
}
