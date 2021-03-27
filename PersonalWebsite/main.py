import json
from email import encoders
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
import smtplib
import random
import os
import sys

# import discord
# from discord.ext import commands

# intents = discord.Intents.all()
# client = commands.Bot(command_prefix = "!", intents = intents)

path = f"{os.path.abspath(os.path.dirname(sys.argv[0]))}\config.json"
with open(path, 'r') as f:
    data = json.load(f)
    my_email = data['email']
    password = data['password']



server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
server.ehlo()

# @client.event
# async def on_ready():
#     guild = client.get_guild(715927030331342928)
#     channel = discord.utils.get(
#         guild.channels, id=715927030826532996
#     )
#     await channel.send("The code worked....")

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

#client.run("NTg4NzYzNzI3NTQxODI5NjMy.XQJ28w.bB_jc8T0lDmVhhX36fokYdt6aQo")
send_verification(sys.argv[1], sys.argv[2])





