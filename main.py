from fastapi import FastAPI
from fastapi_mail import FastMail, MessageSchema,ConnectionConfig
from starlette.requests import Request
from starlette.responses import JSONResponse
from pydantic import EmailStr, BaseModel
from typing import List
from pydantic import BaseModel
from starlette.status import HTTP_200_OK

app = FastAPI()

class email_schema(BaseModel):
    name: str
    email: str
    body: str
    subject: str

@app.post("/send/email")
async def send_email(emails: email_schema):
    conf = ConnectionConfig(
       MAIL_USERNAME='info@cempakafoundation.org',
       MAIL_PASSWORD="Di9xka0hhJyV",
       MAIL_PORT=587,
       MAIL_SERVER="smtp.zoho.com",
       MAIL_TLS=True,
       MAIL_SSL=False,
        MAIL_FROM='info@cempakafoundation.org'
    )

    message = MessageSchema(
           subject=emails.subject,
           recipients=[emails.email],  # List of recipients, as many as you can pass
           body=emails.body
           )

    fm = FastMail(conf)
    await fm.send_message(message)
    return HTTP_200_OK