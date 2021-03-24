<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PersonalWebsite.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="main.js" type="text/javascript"></script>
    <body onload='typeWriter("<%=greeting %>", 120);'>
        <div id="header" >
            <!--<a href="#about-me">contact</a>-->
        </div>
        <!--<div id="about-me">
            <p id="paragraph-title">Hey, I'm <span style="color:#3477eb;">Yarin.</span></p><br />
            I am <span style="color: darkorange;">16</span> years old!<br />
            I am from <span style="color: darkorange;">Herzelia</span>, Israel &nbsp; <a href="https://goo.gl/maps/zFTp52hefrhjP1kT8" target="blank_" style="color:white;width:22px;height:25px;text-decoration: none;">
            <i class="fas fa-location-arrow" style="font-size: 22px;" aria-hidden="true"> &nbsp; </i> </a><br />
            I study first year at <span style="color: darkorange;">Hayovel</span> High School! &nbsp;<a href="https://hayovel.co.il/" target="blank_" style="color:white;width:22px;height:25px;text-decoration: none;">
            <i class="fas fa-school" style="font-size: 22px;" aria-hidden="true"> &nbsp; </i> </a>   
        </div>-->
        <div id="about-me">
            
           <p id="paragraph-title">Hey, I'm <span style="color:#3477eb;">Yarin.</span></p><br />
            <span style="color:darkorange;">16</span> year-old <span style="color:darkorange;">Computer Science</span> student
        </div>
        <div>
            <button class="button" onclick="location.href = 'register.aspx';">register</button>
            <button class="button" onclick="location.href = 'register.aspx';">My Projects</button>
            <button class="button" onclick="location.href = 'register.aspx';">About me</button>
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
