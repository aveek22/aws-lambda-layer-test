locals {
  lambda-zip-location = "../build/lambda_2.zip"
}

module "lambda_layer" {
    source  = "../../terraform/lambda_layer"
}

data "archive_file" "lambda_2" {
  type = "zip"
  source_dir = "../lambda-function-2/"
  output_path = local.lambda-zip-location
}

resource "aws_lambda_function" "lambda_2" {
  filename = local.lambda-zip-location
  function_name = "terraform_lambda_function_2"
  role = aws_iam_role.lambda_2_role.arn
  handler = "app.main"
  source_code_hash = "${data.archive_file.lambda_2.output_base64sha256}"
  runtime          = "python3.9"
  timeout          =  90
  layers = [
    module.lambda_layer.test_lambda_layer_arn
  ]

  tags = {
    Application = "aws-lambda-layer-test"
  }
}