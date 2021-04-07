<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PersonalWebsite.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body onload='typeWriter("<%=greeting %> I&apos;m Yarin.", 100);'>
        <div id="header" >
            <!--<a href="#about-me">contact</a>-->
        </div>
        
        <div id="homepage" >
            <p id="paragraph-title"></p><br />
           <%--<p id="paragraph-title"><%=greeting %>, I'm <span style="color:#3477eb;">Yarin.</span></p><br />--%>
            <span style="color:#b7dd71">print</span><span style="color:yellow">(</span><span style="color: #a58c4f">"</span><span style="color:darkorange;">16</span> year-old <span style="color:darkorange;">Computer Science</span> student<span style="color: #a58c4f">"</span><span style="color:yellow">)</span>
        </div>
        <div class="buttons-container">
            <button class="button" onclick="location.href = 'register.aspx';"><span>Register</span></button>
            <button class="button" onclick="location.href = 'aboutme.aspx';"><span>About me</span></button>
            <button class="button" onclick="location.href = 'projects.aspx';"><span>My Projects</span></button>
            
        </div>
        <!--
        <div id="what-do-i-study"><p id="paragraph-title">What do I study?</p>
            I study several trends at High School: <br />
            For my main proffesion, I am studying <span style="color: darkorange;">Computer Science. </span><br />
            In the second trend I chose <span style="color: darkorange;">Physics!</span><br />
            Also another high-level professions I am studying are accelerated <span style="color: darkorange;">English</span> and extended <span style="color: darkorange;">Math</span>
        </div>
        
        <div id="my-experience">
            <p id="paragraph-title">My Programming Experience</p>
            I have been first introduced to programming almost 3 years ago.
        </div>-->
    </body>
</asp:Content>
