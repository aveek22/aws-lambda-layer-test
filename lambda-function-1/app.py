""" This is an AWS Lambda function to demonstrate the import of Lambda Layers
"""

# from lambdalayer import lambda_layer


def main(event, context):
    """Handler method for the AWS Lambda Function."""

    print(f"*** Lambda 1: Execution of AWS Lambda function starts. ***")
    print(f"*** Lambda 1: Trying to invoke Lambda Layer. ***")

    # lambda_layer.import_layer()

    print(f"*** Lambda 1: Invoked method from Lambda Layer. ***")
    print(f"*** Lambda 1: Execution of AWS Lambda function ends. ***")