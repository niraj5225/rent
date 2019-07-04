<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title></title>
   
    <style type="text/css">
       
                .style2
        {
            color: #CC0000;
        }
     
      
    </style>
   
</head>
<body background="close-up-door-focus-101808.jpg">

    <form id="form1" runat="server" defaultbutton="Button1">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logo.jpg" 
        ToolTip="Gallery" style="border-radius:50%; height:80px; width:80px;" 
        BorderColor="#000066" BorderStyle="Outset" BorderWidth="2px" 
        AlternateText="Gallery" onclick="ImageButton1_Click" />
    <a href="signup.aspx" style="float:right; color:Blue; text-decoration:underline">Sign Up</a>
        <br />
    <h1 align="center" style="color: #000066" >Login as:</h1>
    <div  style="-webkit-box-shadow:0px 0px 18px rgba(0,0,0,1); -webkit-border-radius:5px; border-style: outset; border-width: thin; background-image: url('Difference-Between-Joint-Tenants-Tenancy-In-Common.jpg'); height: 281px; width: 794px; top: 202px; left: 252px; position: absolute;" 
            align="center">

        <asp:Label ID="Label1" runat="server" Text="User ID:" style="top: 84px; left: 500px; text-align: left; position: absolute;" 
            ></asp:Label>
        <span style="top: 84px; left: 550px; color:Red; position:absolute;">*</span><br/>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="abc@as.com"
            
            style="top: 100px; left: 500px; width: 147px; position: absolute; -webkit-border-radius:5px;"   ></asp:TextBox><br/>
       <br/>
        <asp:Label ID="Label2" runat="server" Text="Password:"  
            style="top: 140px; left: 500px; position: absolute;" ></asp:Label>
        <span style="top: 140px; left: 564px; color:Red; position:absolute;">*</span><br />
        <asp:TextBox ID="TextBox2" runat="server"
            style=" -webkit-border-radius:5px; width: 147px; top: 156px; left: 500px; position: absolute;" 
            TextMode="Password"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/m.png" 
            ToolTip="Show password" 
            style="-webkit-border-radius:5px; position:absolute; top: 158px; left: 633px; height: 15px; width: 16px;" 
            BorderColor="White" onclick="ImageButton2_Click"></asp:ImageButton><br/>
        <asp:Label ID="Label3" runat="server" 
            
            style="top: 186px; left: 500px; height: 15px; text-align: left; position: absolute; font-size: small; color: #FF0000; width: 175px;" 
            ></asp:Label><br/>
        
        <asp:Button ID="Button1" runat="server" Text="Log In" 
            
            style="top: 234px; left: 499px; position: absolute; bottom: 21px; -webkit-border-radius:3px; width: 161px;" 
            onclick="Button1_Click" />
    <h3 align="center" style="height: 26px; width: 794px; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </h3>
        <asp:Image ID="Image1" runat="server" style="-webkit-box-shadow: 0px 0px 10px rgba(0, 0, 0, 1); height: 279px; width: 427px; top: 0px; left: -7px; position: absolute; border-style: outset; border-width: thin; margin-left: 0px; background-image: url('Difference-Between-Joint-Tenants-Tenancy-In-Common.jpg')" 
            ImageUrl="~/logo (2).png" />
        <asp:HyperLink ID="HyperLink1" runat="server" 
          style="top: 201px; left: 501px; position: absolute;" 
            NavigateUrl="~/fp.aspx" >Forget Password?</asp:HyperLink>
    </div>
   </form>
</body>
</html>
