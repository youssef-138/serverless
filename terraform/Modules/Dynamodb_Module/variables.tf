variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "Billing mode for the DynamoDB table (PAY_PER_REQUEST or PROVISIONED)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "Primary hash key for the DynamoDB table"
  type        = string
}

variable "hash_key_type" {
  description = "Data type for the hash key (S for String, N for Number)"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the DynamoDB table"
  type        = map(string)
  default     = {}
}
