<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
                a
    {
        color:White;
        padding:14px 16px;
        text-align:center;
        font-size:x-large;
        
        text-decoration:none;
        }
     a:hover.s
     {
         color:Gray;
         background-color:White;
         }
     a.active
     {
         color:Blue;
         }
        a.t
      {
          float:right;
          color:White;
        padding:2px 16px;
        text-align:center;
        font-size:x-larger;
        text-decoration:none;         
        }  
          a:hover.t
          {
              padding:14px 16px;
                color:Grey;
         background-color:White;
              }  
      
        .style1
        {
            color: #CC0000;
        }
      
    </style>
</head>
<body bgcolor="#F0F8FF" >

    <form id="form1" runat="server">
    <div style="background-color: Black; height: 78px; ">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/l.png" Height="50px" Width="250px" />
    </div>
    <div style="background-color: #808080; height: 30px;-webkit-box-shadow:5px 5px 28px rgba(0,09,0,01); -webkit-border-radius:10px; z-index: 1; left: 05px; top: 65px; position: absolute; width:99.2%;">
  
    <a class="s" href="menubar.aspx">Gallery</a>
    <a class="s" href="aboutus.aspx">About</a>
    <a class="s" href="">Donate</a>
    <a class="active" href="Default9.aspx">Feedback</a> 
  
    <a class="t" href="Default14.aspx">Log Out</a><u>
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" style="float:right;padding:3px 8px;"
            Font-Underline="True" ForeColor="#000066" Font-Size="Large" 
            NavigateUrl="~/Default15.aspx">[HyperLink2]</asp:HyperLink></u>
   </div><center>
    <div  style=" top: 180px; left: 523px;-webkit-box-shadow:0px 0px 18px rgba(0,0,0,1);-webkit-border-radius:10px; position:absolute;">
    <center><h1 style="color: #000066; text-decoration: blink;">Feedback </h1></center>
    <center>
        <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="black"></asp:Label>
        <span class="style1">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1"
            runat="server" Placeholder="Enter full name" 
            style="-webkit-border-radius:5px;" Width="147px"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Inset your Name" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
          <asp:Label ID="Label2" runat="server" Text="User Id" ForeColor="black"></asp:Label>
        <span class="style1">*</span>&nbsp;&nbsp;<asp:TextBox ID="TextBox2"
            runat="server" Width="147px"  style="-webkit-border-radius:5px;"></asp:TextBox> <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Inset your User ID" ControlToValidate="TextBox2" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                     ErrorMessage="Incorrect Email ID" ControlToValidate="TextBox2" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                     ForeColor="#CC0000"></asp:RegularExpressionValidator><br /><br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter your feedback.." 
            TextMode="MultiLine" Width="352px" 
            style="-webkit-border-radius:5px;" 
            Height="165px"></asp:TextBox>&nbsp;&nbsp;
           <br />
        <asp:Label ID="Label3" runat="server" style="color: #CC0000" ></asp:Label>
            <br /> <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" 
            style="-webkit-border-radius:3px;" Width="348px" onclick="Button1_Click"/>
        <br /><br />
    </center>
    
    </div>
    </center>
    </form>
</body>
</html>
