<%@ Page Title="My Projects" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="projects.aspx.cs" Inherits="PersonalWebsite.projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body onload='typeWriter("My Projects", 120)'>
        <div id="header"> 
            <p id=paragraph-title style="font-size: 60px;"></p>
        </div>
        <br />
    <div class="my-projects-container">
        <div class="project"><a href="https://github.com/Yarin/snake-it" target="_blank"><p>Snake It!</p></a>
        <span>"Snake It!" is a game made with Python.<br />
            I found a very powerful Python library called Pygame, this is one of the first games I have used pygame with.<br />
            I had a lot of fun making it with my colleague <a href="https://github.com/dansh" target="_blank">Dan</a>.</span>
        </div>
        <div class="project" style="grid-column: auto;"><a href="https://github.com/Yarin/mongodb-login-system" target="_blank"><p>MongoDB Login System</p></a>
            <span>This project was to get experinenced with MongoDB using the PyMongo library from Python.<br />
                In this project I dealt with changing passwords, duplicate accounts and more.
            </span>
        </div>
        <div class="project" style="grid-column: auto;"><a href="https://github.com/Yarin/AntiRaid-bot" target="_blank"><p>AntiRaider Discord Bot</p></a>
            <span>This bot is one of my first public discord bot to protect big friend's servers from raiding them.<br />
                From this project I learned about advanced discord.py, how to upload files to a VPS server, GitHub integration, and also asynchronous programming.<br />
                
            </span>
        </div>

        <div class="project" style="grid-row: 2;"><p>AlonDaShop</p>
            <span>AlonDaShop is one of my biggest projects (closed source) I have ever made. Basically, it's a discord bot that has a currency system and you can buy things from a website on the internet.
                I have learned from this project about POST requests, server side, and opening specific ports for requests.        
            </span>
        </div>
        <div class="project" style="grid-row: 2;"><p>StrixBot</p>
            <span>StrixBot is a (closed source) discord bot for a network I'm working in (TopStrix).<br />
                This bot is a moderation and fun bot to mess around with, and also keep tracks of banned-role members in server.<br />
                From this project I learned about advanced databases, and asynchronous tasks.
            </span>
        </div>
        <div class="project" style="grid-row: 2;"><a href="https://github.com/Yarin/school-webiste-project" target="_blank"><p>This Website!</p></a>
            <span>This website is a protfolio website for me, and also part of my high school degree (30%).<br />
                This project was very interesting to do and also was lot of fun to work on, I learned about ASP.NET, SQL, HTML, CSS, JavaScript, and more!
            </span>
        </div>

        
        


    </div>
    </body>
</asp:Content>
