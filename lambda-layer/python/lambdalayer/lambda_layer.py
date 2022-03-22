""" This module serves as a Lambda Layer that can be imported
    by other AWS Lambda functions.

    Purpose: To demonstrate the automated deployment of Lambda Layers
    using Terraform.

    Output: When this layer is imported, it will print certain messages
    implying that the module has been imported sucessfully.
"""

def import_layer():
    """Import this method in the AWS Lambda Functions."""

    print(f"********* Importing AWS Lambda Layer **********")
    print(f"...............................................")
    print(f" *** AWS Lambda Layer imported succesfully. ***")

    return True