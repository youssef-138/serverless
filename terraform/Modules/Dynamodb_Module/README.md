# DynamoDB Table Module

This module creates a DynamoDB table with configurable parameters.

## Inputs

- **`table_name`**: The name of the DynamoDB table.  
  *Type*: `string`

- **`billing_mode`**: The billing mode for the table (`PAY_PER_REQUEST` or `PROVISIONED`).  
  *Type*: `string`

- **`hash_key`**: The primary hash key for the table.  
  *Type*: `string`

- **`hash_key_type`**: The data type of the hash key (`S` for String, `N` for Number).  
  *Type*: `string`

- **`tags`**: Tags to assign to the table.  
  *Type*: `map(string)`

## Outputs

- **`table_name`**: The name of the DynamoDB table.  
  *Description*: The name of the table created by the module.

- **`table_arn`**: The Amazon Resource Name (ARN) of the DynamoDB table.  
  *Description*: The ARN of the created DynamoDB table, useful for permissions or referencing in other resources.
