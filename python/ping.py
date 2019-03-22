import json


def handler(event, context):
    body = {
        "pong": "python"
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response