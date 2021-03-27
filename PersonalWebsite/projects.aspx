<%@ Page Title="My Projects" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="projects.aspx.cs" Inherits="PersonalWebsite.projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body onload='typeWriter("My Projects", 120);'>
        <div id="header"> 
        </div>
    <div id="my-projects"><p id=paragraph-title>Most of my projects are <span style="color:#3477eb;">open source</span> and can be found in my <a href="https://github.com/Yarin" class="hyperlink">GitHub</a></p></div>
    </body>
</asp:Content>
