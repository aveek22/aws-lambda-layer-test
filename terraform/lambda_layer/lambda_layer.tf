locals {
  lambda-layer-zip-location = "../build/python.zip"
}

data "archive_file" "lambda_layer" {
  type = "zip"
  source_dir = "../lambda-layer/"
  output_path = local.lambda-layer-zip-location
}

resource "aws_lambda_layer_version" "test_lambda_layer" {
  filename   = local.lambda-layer-zip-location
  layer_name = "test_lambda_layer_v3"
  source_code_hash    = "${data.archive_file.lambda_layer.output_base64sha256}"
  compatible_runtimes = ["python3.6","python3.7","python3.8","python3.9"]
}

output "test_lambda_layer_arn" {
  description = "The ARN of the Lambda Layer"
  value       = aws_lambda_layer_version.test_lambda_layer.arn
}