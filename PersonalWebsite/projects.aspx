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
            I found a very powerful Python library called Pygame, this is one of the first games I have used pygame with.</span>
        </div>
        <div class="project" style="grid-column: 2;"><a href="https://github.com/Yarin/mongodb-login-system"><p>MongoDB Login System</p></a>
            <span>This project was to get experinenced with MongoDB using the PyMongo library from Python.<br />
                In this project I dealt with changing passwords, duplicate accounts and more.
            </span>
        </div>


    </div>
    </body>
</asp:Content>
