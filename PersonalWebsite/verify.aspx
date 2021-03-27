<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="PersonalWebsite.verify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div>
            enter your code you gaylord
            <form id="form" action="verify.aspx" runat="server">
          <label dir="ltr" for="code" class="form-label" >code:</label><br>
          <input dir="ltr" name="code" class="form-label"><br>
          <button type="submit" id="form-button" class="form-label">הצטרף</button>
                </form>
        </div>
        <div>
            <%=code %>
        </div>
    </body>
</asp:Content>
