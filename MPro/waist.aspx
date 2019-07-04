<%@ Page Language="C#" AutoEventWireup="true" CodeFile="waist.aspx.cs" Inherits="waist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1"
            runat="server" Text="Button" onclick="Button1_Click" />
        <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
        <%#Eval("id") %>
        </ItemTemplate>
        </asp:DataList><center>
        <asp:Panel ID="Panel1" runat="server" Height="71px" Width="75%" BackColor="Black" 
                style="-webkit-border-radius:190px;">   <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Magnifying_Glass-512.png" Height="71px" ImageAlign="Bottom" style="float:right; border-radius:50%;"
                Width="75px" BackColor="#FF6600" /><br />
        <center>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="25%" 
                style="-webkit-border-radius:10px;" Font-Size="Large">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>HOUSE</asp:ListItem>
            <asp:ListItem>ROOM</asp:ListItem>
            <asp:ListItem>HAll</asp:ListItem>
            <asp:ListItem>GROUND</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox2" runat="server" Width="25%" 
                style="-webkit-border-radius:10px;" Font-Size="Larger"></asp:TextBox>
         </center>
        </asp:Panel></center>
       </div>
    </form>
</body>
</html>
