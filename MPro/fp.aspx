<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fp.aspx.cs" Inherits="fp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #000066;
            font-family: "Lucida Handwriting";
        }
        .style2
        {
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="min-height: 71vh; padding-top:25vh;background: #e0ebe8;">
    <center>
        <h1 class="style1">
            <strong>Forget Password:</strong></h1>
        <br /><br /><br /><br />
    <br />User Id:<span class="style2">*</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" style="-webkit-border-radius:5px;"></asp:TextBox><br />
        <asp:Label ID="Label1" runat="server" 
            style="color: #CC0000; background-color: #FFFF66"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" 
            style="-webkit-border-radius:5px;" onclick="Button1_Click"/>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Go back to Login page</asp:HyperLink></center>
    </div>
    </form>
</body>
</html>
