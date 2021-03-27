import json
from email import encoders
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
import smtplib
import random
import os
import sys


path = f"{os.path.abspath(os.path.dirname(sys.argv[0]))}\config.json"
with open(path, 'r') as f:
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


send_verification(sys.argv[1], sys.argv[2])





