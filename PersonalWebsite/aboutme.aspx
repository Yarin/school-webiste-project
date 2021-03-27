<%@ Page Title="About Me" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutme.aspx.cs" Inherits="PersonalWebsite.aboutme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div id="about-me">
            <p id="paragraph-title">About Me</p><br />
            I am <span style="color: darkorange;">16</span> years old!<br />
            I am from <span style="color: darkorange;">Herzelia</span>, Israel &nbsp; <a href="https://goo.gl/maps/zFTp52hefrhjP1kT8" target="blank_" style="color:white;width:22px;height:25px;text-decoration: none;">
            <i class="fas fa-location-arrow" style="font-size: 22px;" aria-hidden="true"> &nbsp; </i> </a><br />
            I study first year at <span style="color: darkorange;">Hayovel</span> High School! &nbsp;<a href="https://hayovel.co.il/" target="blank_" style="color:white;width:22px;height:25px;text-decoration: none;">
            <i class="fas fa-school" style="font-size: 22px;" aria-hidden="true"> &nbsp; </i> </a>   
        </div>
        
    </body>
</asp:Content>
