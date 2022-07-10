import json
import logging

import azure.functions as func


def main(event: func.EventGridEvent) -> func.HttpResponse:
    """Transform"""
    result = json.dumps(
        {
            "id": event.id,
            "data": event.get_json(),
            "topic": event.topic,
            "subject": event.subject,
            "event_type": event.event_type,
        }
    )

    logging.info(f"Python EventGrid trigger processed an event: {result}")

    func.HttpResponse(code=200, body=result)
