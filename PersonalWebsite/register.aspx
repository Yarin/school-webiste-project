<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="PersonalWebsite.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div>
            <%=code %>
        </div>
        <div>
            <form id="form" action="register.aspx" runat="server">
          <label dir="rtl" for="mail" class="form-label" >אימייל:</label><br>
          <input dir="ltr" type="email" name="mail" class="form-label"><br>
           <label dir="rtl" for="name" class="form-label" >שם:</label><br>
          <input dir="rtl" name="name" class="form-label" /><br />
          <button type="submit" id="form-button" class="form-label">הצטרף</button>
          
    </form>
        </div>
    </body>
</asp:Content>
