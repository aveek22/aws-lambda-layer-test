resource "aws_iam_role_policy" "lambda_2_policy" {
  name = "lambda_2_policy"
  role = aws_iam_role.lambda_2_role.id

  policy = file("../terraform/lambda_2/iam-role/lambda-policy.json")
}

resource "aws_iam_role" "lambda_2_role" {
  name = "lambda_2_role"
  assume_role_policy = file("../terraform/lambda_2/iam-role/lambda-assume-policy.json")

  tags = {
    Application = "aws-lambda-layer-test"
  }
}