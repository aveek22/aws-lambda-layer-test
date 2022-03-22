resource "aws_iam_role_policy" "lambda_1_policy" {
  name = "lambda_1_policy"
  role = aws_iam_role.lambda_1_role.id

  policy = file("../terraform/lambda_1/iam-role/lambda-policy.json")
}

resource "aws_iam_role" "lambda_1_role" {
  name = "lambda_1_role"
  assume_role_policy = file("../terraform/lambda_1/iam-role/lambda-assume-policy.json")

  tags = {
    Application = "aws-lambda-layer-test"
  }
}