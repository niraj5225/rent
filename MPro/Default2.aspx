<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="close-up-door-focus-101808.jpg" style="Background-size:cover;"> 
    <form id="form1" runat="server">
    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/logo.jpg" 
        ToolTip="Gallery" style="border-radius:50%; height:80px; width:80px;" 
        BorderColor="#000066" BorderStyle="Outset" BorderWidth="2px" 
        AlternateText="Gallery" onclick="ImageButton4_Click" />
    <div align="center">
        <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Solid" 
            BorderWidth="10px" 
            style="position:absolute; -webkit-border-radius:10px;top:190px;left:280px;" 
            BackColor="AliceBlue">
        <center><h1>Category:</h1></center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" 
                runat="server" BorderColor="#FFFFCC" 
                BorderStyle="Solid" BorderWidth="3px" 
                ImageUrl="~/architecture-beautiful-exterior-106399.jpg" 
                style=" height:160px; width:180px; -webkit-border-radius:15px;" 
                onclick="ImageButton1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#FFFFCC" 
                BorderStyle="Solid" BorderWidth="3px" 
                ImageUrl="~/luxury-room-sofitel-the-palm-dubai-1200x675.jpg" 
                style=" height:160px; width:180px; -webkit-border-radius:15px;" 
                onclick="ImageButton2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#FFFFCC" 
                BorderStyle="Solid" BorderWidth="3px" 
                ImageUrl="~/Interior2015-01-2610.31.11.jpg" 
                style=" height:160px; width:180px; -webkit-border-radius:15px;" 
                onclick="ImageButton3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" BorderColor="#FFFFCC" 
                BorderStyle="Solid" BorderWidth="3px" ImageUrl="~/farmfield.jpg" 
                style=" height:160px; width:180px; -webkit-border-radius:15px;" 
                onclick="ImageButton4_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            House Lending&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Room Lending&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hall Lending&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ground Lending 
            <br />
            <br />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
