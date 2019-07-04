<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default17.aspx.cs" Inherits="Default17" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #666666;
        }
        .style2
        {
            font-size: xx-large;
            font-family: Algerian;
            color: #000000;
        }
        a:hover.t
        {
            background-color:White;
            border-color:Black;
        }
        .style3
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style4
        {
            text-decoration: underline;
        }
    </style>
</head>
<body bgcolor="Black">
    <form id="form1" runat="server">
    <div style=" min-height: 50vh; padding-top: 50vh; background-size: 100% 100%; background-image: url('430049-Kycb.jpg');"><center>
            <h2>
    <a class="t" href="#donate" style="background-color: #FF6600; text-decoration:none; padding:10px;"><span class="style1">&nbsp;&nbsp;&nbsp;</span><span 
                    class="style2">Donate</span><span class="style1">&nbsp;&nbsp;&nbsp;</span></a></h2>
        </center>
    </div>
    <div id="donate" style="background-color: #000000">
        <h1 class="style3">
&nbsp;&nbsp; <span class="style4">Make a Donation:</span>
        </h1>
            <h2><em style="color: #666666">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It's not how much we give but how much love we put into giving.</em></h2>

        <p class="style3">
            &nbsp;</p><br />
        <asp:Panel ID="Panel1" runat="server" style="-webkit-border-radius:10px; color: #CCCCCC; margin-left: 767px; margin-right: 75px;" 
            Width="395px" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"><center style="width: 381px; margin-left: 0px">
            &nbsp;
            <br />
                &nbsp; Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Full Name" style="-webkit-border-radius:5px;"></asp:TextBox>
                <br />
                <br />
                &nbsp; User Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" placeholder="example@abc.com" style="-webkit-border-radius:5px;"></asp:TextBox>
                <br />
                <br />
                &nbsp; Phone No.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" placeholder="" style="-webkit-border-radius:5px;"
                    TextMode="Phone"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp; Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="170px" style="-webkit-border-radius:5px;"></asp:TextBox>
                <br />
                <br />
                &nbsp; Donate To:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server"  Width="170px" 
                    style="-webkit-border-radius:5px;" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>--------Select any--------</asp:ListItem>
                    <asp:ListItem>Old Age Home</asp:ListItem>
                    <asp:ListItem>Mother Teressa Foundation</asp:ListItem>
                    <asp:ListItem>Aanath Aasaram</asp:ListItem>
                    <asp:ListItem>Child Home</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    &nbsp; Name of Sanstha:<asp:TextBox ID="TextBox4" runat="server" style="-webkit-border-radius:5px;"></asp:TextBox>
                </asp:Panel>
                <br />
                &nbsp; Item:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="DropDownList2" style="-webkit-border-radius:5px;" 
                    Width="170px" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
             <asp:ListItem>--------Select any--------</asp:ListItem>
             <asp:ListItem>Food</asp:ListItem>
             <asp:ListItem>Clothe</asp:ListItem>
             <asp:ListItem>Book</asp:ListItem>
             <asp:ListItem>Money</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                &nbsp; Name of Item:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" style="-webkit-border-radius:5px;" runat="server"></asp:TextBox>
            </asp:Panel>
            <br />
                &nbsp;&nbsp; Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" style="-webkit-border-radius:5px;"></asp:TextBox>
            <br />
            <br />
            <br />
           &nbsp; <asp:Button ID="Button1" runat="server" Text="Donate" Width="362px" 
                    style="-webkit-border-radius:5px;" BackColor="#FF6600" 
                    onclick="Button1_Click" /><br /><br /></center>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
