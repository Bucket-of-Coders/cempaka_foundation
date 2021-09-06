from string import Template

from fastapi import FastAPI
from fastapi_mail import FastMail, MessageSchema,ConnectionConfig
from starlette.requests import Request
from starlette.responses import JSONResponse
from pydantic import EmailStr, BaseModel
from typing import List
from pydantic import BaseModel
from starlette.status import HTTP_200_OK
import os

app = FastAPI()

class email_schema(BaseModel):
    name: str = None
    email: str = None
    body: str = None
    subject: str = None

@app.post("/send/email")
async def send_email(emails: email_schema):
    conf = ConnectionConfig(
       MAIL_USERNAME=os.getenv('EMAIL_USER'),
       MAIL_PASSWORD=os.getenv('EMAIL_PASS'),
       MAIL_PORT=587,
       MAIL_SERVER="smtp.zoho.com",
       MAIL_TLS=True,
       MAIL_SSL=False,
        MAIL_FROM=os.getenv('EMAIL_USER')
    )
    fm = FastMail(conf)

    # send to cempaka
    with open('email.html', encoding='utf8') as f:
        text = Template(f.read())
        text = text.safe_substitute()
        message_org = MessageSchema(
            subject=emails.subject,
            recipients=[emails.email],  # List of recipients, as many as you can pass
            body=text,
            subtype = "html"
        )
        await fm.send_message(message_org)

    # send to cempaka
    with open('email_info.html', encoding='utf8') as f:
        receiver = ['info@cempakafoundation.org']
        text = Template(f.read())
        text = text.safe_substitute(
            froms=emails.email,
            message=emails.body
        )
        message_org = MessageSchema(
            subject=emails.subject,
            recipients=[receiver],  # List of recipients, as many as you can pass
            body=text,
            subtype="html"
        )
        await fm.send_message(message_org)
    return HTTP_200_OK