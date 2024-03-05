import json

print('Loading function')

print('Loading function')

def lambda_handler(event, context):
    payload = json.dumps(event, indent=2)
    print("Received event: " + payload)
    return {
        'statusCode' : 200,
        'body': 'hello world'
    }


def add_numbers(event, context):
    # Assuming the event contains 'number1' and 'number2'
    try:
        number1 = event.get('number1')
        number2 = event.get('number2')

        # Convert to integers if they are not already
        number1 = int(number1)
        number2 = int(number2)

        # Perform addition
        sum_result = number1 + number2

        # Prepare and return the response
        response = {
            'statusCode': 200,
            'body': json.dumps({
                'result': sum_result
            })
        }
        return response

    except ValueError as e:
        # Handle the case where input numbers are not valid integers
        print("Error: ", e)
        return {
            'statusCode': 400,
            'body': json.dumps({
                'error': 'Please provide two valid integers as number1 and number2'
            })
        }

    except Exception as e:
        # Handle any other exceptions
        print("Error: ", e)
        return {
            'statusCode': 500,
            'body': json.dumps({
                'error': 'An unexpected error occurred'
            })
        }