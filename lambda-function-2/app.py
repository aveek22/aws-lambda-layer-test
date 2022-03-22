""" This is an AWS Lambda function to demonstrate the import of Lambda Layers
"""

# from lambdalayer import lambdalayer


def main(event, context):
    """Handler method for the AWS Lambda Function."""

    print(f"*** Lambda 2: Execution of AWS Lambda function starts. ***")
    print(f"*** Lambda 2: Trying to invoke Lambda Layer. ***")

    # lambdalayer.import_layer()

    print(f"*** Lambda 2: Invoked method from Lambda Layer. ***")
    print(f"*** Lambda 2: Execution of AWS Lambda function ends. ***")