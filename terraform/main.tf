module "lambda_1" {
    source  = "../terraform/lambda_1"
    lambda_layer_arn = "${module.lambda_layer.test_lambda_layer_arn}"
}

module "lambda_2" {
    source  = "../terraform/lambda_2"
    lambda_layer_arn = "${module.lambda_layer.test_lambda_layer_arn}"
}

module "lambda_layer" {
    source  = "../terraform/lambda_layer"
}