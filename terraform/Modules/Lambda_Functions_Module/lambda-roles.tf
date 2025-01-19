resource "aws_iam_role" "lambda_role" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy_document
}

resource "aws_iam_policy_attachment" "lambda_dynamodb_policy" {
  name       = var.policy_attachment_name
  roles      = [aws_iam_role.lambda_role.name]
  policy_arn = var.policy_arn
}

resource "aws_iam_role_policy_attachment" "lambda_basic" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role = aws_iam_role.lambda_role.name
}