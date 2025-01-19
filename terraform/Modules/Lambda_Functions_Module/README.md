# Lambda Functions Module

This Terraform module creates two Lambda functions: `GetStudentData` and `InsertStudentData`, along with their associated IAM roles and policies.

## Inputs

- **`lambda_role_name`**: Name of the IAM role for Lambda.
- **`assume_role_policy`**: IAM assume role policy document.
- **`runtime`**: Runtime for the Lambda functions (default: `python3.9`).
- **`timeout`**: Timeout for the Lambda functions (default: `10`).
- **`get_function_name`**: Name of the `GetStudentData` function.
- **`get_handler`**: Handler for the `GetStudentData` function.
- **`get_lambda_zip_path`**: Path to the ZIP file for `GetStudentData` function.
- **`insert_function_name`**: Name of the `InsertStudentData` function.
- **`insert_handler`**: Handler for the `InsertStudentData` function.
- **`insert_lambda_zip_path`**: Path to the ZIP file for `InsertStudentData` function.
- **`role_name`**: Name of the IAM role.
- **`assume_role_policy`**: IAM assume role policy document.
- **`policy_attachment_name`**: Name of the policy attachment.
- **`policy_arn`**: ARN of the policy to attach.

## Outputs

- **`get_student_function_arn`**: ARN of the `GetStudentData` Lambda function.
- **`insert_student_function_arn`**: ARN of the `InsertStudentData` Lambda function.
- **`iam_role_arn`**: ARN of the IAM role.
- **`iam_role_name`**: Name of the IAM role.