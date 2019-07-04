<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="Default8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
 
    .z:hover
    {
          
  -webkit-transform: scale(1.5);
        }
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
           .style1
        {
            text-align: center;
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
      
    </style>
</head>
<body bgcolor="#F0F8FF" >

    <form id="form1" runat="server">
    <div style="background-color: Black; height: 78px; ">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/l.png" Height="50px" Width="250px" />
    </div>
    <div style="background-color: #808080; height: 30px;-webkit-box-shadow:5px 5px 28px rgba(0,09,0,01); -webkit-border-radius:10px; z-index: 1; left: 05px; top: 65px; position: absolute; width:99.2%;">
    
    <a class="s" href="Default14.aspx">Gallery</a>
    <a class="active" href="Default17.aspx">About</a>
    <a class="s" href="Default17.aspx">Donate</a>
    <a class=s href="Default9.aspx">Feedback</a> 
    
    <a class="t" href="Default14.aspx">Log Out</a><u>
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" style="float:right;padding:3px 8px;"
            Font-Underline="True" ForeColor="#000066" Font-Size="Large" 
            NavigateUrl="~/Default15.aspx"></asp:HyperLink></u>
   </div>
   <br>
   <br />

   <h1 class="style1" 
          style="font-size: xxx-large; color: #000080; text-decoration: underline;">About Us</h1>

    <div style="top:305px; left:250px; position:absolute;" align="center">
    <center>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/RNTC0816036.jpg" class="z" 
            style="-webkit-box-shadow:0px 0px 18px rgba(0,0,0,1); -webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(30%, transparent) , to(rgba(250, 250, 250, 0.1)));

border-radius:50%; height:180px; width:160px;" 
            onclick="ImageButton1_Click" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ImageButton ID="ImageButton2" runat="server" class="z" ImageUrl="~/RNTC0816038.jpg" 
            style="-webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(30%, transparent) , to(rgba(250, 250, 250, 0.1)));

 -webkit-box-shadow:0px 0px 18px rgba(0,0,0,1); border-radius:50%; height:180px; width:160px;" 
            onclick="ImageButton2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ImageButton ID="ImageButton3" runat="server" class="z" ImageUrl="~/RNTC0816023.jpg" 
            style="-webkit-box-shadow:0px 0px 18px rgba(0,0,0,1);-webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(30%, transparent) , to(rgba(250, 250, 250, 0.1)));

 border-radius:50%; height:180px; width:160px;" 
            onclick="ImageButton3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
       <asp:ImageButton ID="ImageButton4" runat="server" class="z" ImageUrl="~/RNTC0816032.jpg" 
            style="-webkit-box-shadow:0px 0px 18px rgba(0,0,0,1); border-radius:50%; -webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(30%, transparent) , to(rgba(250, 250, 250, 0.1)));

height:180px; width:160px;" 
            onclick="ImageButton4_Click" /> <asp:Panel ID="Panel1" runat="server" 
            
            
            style="-webkit-border-radius:5px; -webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(30%, transparent) , to(rgba(250, 250, 250, 0.1)));

 position:absolute; top:96px; left: 1px; width: 156px;" 
            Visible="False">
            <center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Niraj Kumar Verma" ForeColor="blue"></asp:Label><br />
                <asp:Label ID="Label2"
                runat="server" Text="RNTC 08 16 036" ForeColor="black"></asp:Label></center>
        </asp:Panel>
        &nbsp;&nbsp;
             <asp:Panel ID="Panel2" runat="server" 
            
            
            style="-webkit-border-radius:5px;  position:absolute; top:97px; width: 156px; left: 217px;" 
            Visible="False">
            <center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Parmeet Singh" ForeColor="blue"></asp:Label><br />
                <asp:Label ID="Label4"
                runat="server" Text="RNTC 08 16 038" ForeColor="black"></asp:Label></center>
        </asp:Panel>
    &nbsp;&nbsp;
             <asp:Panel ID="Panel3" runat="server" 
            
            
            style="-webkit-border-radius:5px;  position:absolute; top:99px; width: 156px; left: 433px;" 
            Visible="False">
            <center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Kirandeep Kaur" ForeColor="blue"></asp:Label><br />
                <asp:Label ID="Label6"
                runat="server" Text="RNTC 08 16 023" ForeColor="black"></asp:Label></center>
        </asp:Panel>
 &nbsp;&nbsp;
             <asp:Panel ID="Panel4" runat="server"  style="-webkit-border-radius:5px;  position:absolute; top:97px; width: 156px; left: 645px;" 
            Visible="False">
            <center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Neha Priya" ForeColor="blue"></asp:Label><br />
                <asp:Label ID="Label8" runat="server" Text="RNTC 08 16 032" ForeColor="black"></asp:Label></center>
        </asp:Panel>
        </center>
    </div>
    </form>
</body>
</html>
