import json
from email import encoders
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
import smtplib
import random

with open('config.json', 'r') as f:
    data = json.load(f)
    my_email = data['email']
    password = data['password']

server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
server.ehlo()



def send_verification(email, code):
    server.login(my_email, password)
    msg = MIMEMultipart()
    msg['From'] = "Yarin Mina"
    msg['To'] = email
    msg['Subject'] = "yarin.xyz verification code"
    html = f"<html><body>Your verification code is <b>{code}</b><br />It will expire in 5 minutes</body></html>"
    msg.attach(MIMEText(html, 'html'))
    text = msg.as_string()
    server.sendmail(my_email, email, text)
    #server.quit()

send_verification("yarinm0206@gmail.com", random.randint(100000, 1000000))