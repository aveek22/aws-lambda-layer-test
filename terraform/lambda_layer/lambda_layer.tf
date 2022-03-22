locals {
  lambda-layer-zip-location = "../lambda-layer/python.zip"
}

resource "aws_lambda_layer_version" "test_lambda_layer" {
  filename   = local.lambda-layer-zip-location
  layer_name = "test_lambda_layer_v2"
  source_code_hash    = "${filebase64sha256(local.lambda-layer-zip-location)}"
  compatible_runtimes = ["python3.6","python3.7","python3.8","python3.9"]
}

output "test_lambda_layer_arn" {
  description = "The ARN of the Lambda Layer"
  value       = aws_lambda_layer_version.test_lambda_layer.arn
}