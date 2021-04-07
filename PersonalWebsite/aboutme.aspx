<%@ Page Title="About Me" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutme.aspx.cs" Inherits="PersonalWebsite.aboutme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body onload='typeWriter("About Me", 120)'>
        <div id="about-me">
            <p id="paragraph-title"></p><br />
            <p id="aboutme-para">I'm <span style="color: darkorange;">Yarin </span>Mina, <span style="color: darkorange;">16</span> year-old student, studying first year at <span style="color: darkorange;"><a href="https://hayovel.co.il/" target="blank_" style="text-decoration: none; color:darkorange;">Hayovel</span> High School</a>, located in <span style="color: darkorange;"><a href="https://goo.gl/maps/zFTp52hefrhjP1kT8" target="blank_" style="text-decoration: none; color:darkorange;">Herzelia.</a></span><br /> <br /></p>
             <iframe id="iframe-googlemaps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3377.1429835201875!2d34.833053215550315!3d32.17341882182198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151d4875fbcce0ff%3A0xb8034e78a90b3e4f!2sHayovel%20High%20School!5e0!3m2!1sen!2sil!4v1617374673680!5m2!1sen!2sil" width="460" height="340" style="border:0; text-align: right;" allowfullscreen="" loading="lazy"></iframe>
            
            I started programming <span style="color: darkorange;">2 years ago</span> by learning <span style="color: darkorange;">Python</span>
            from <a href="https://www.sololearn.com/learning/1073" target="_blank" style="color: darkorange; text-decoration: none;">SoloLearn</a>
        </div>
        
    </body>
</asp:Content>
