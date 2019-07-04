<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
         
        }
         </style>
</head>
<body background="close-up-door-focus-101808.jpg" style="background-size: cover;">
    <form id="form1" runat="server">
    <div>
    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/logo.jpg" 
        ToolTip="Gallery" style="border-radius:50%; height:80px; width:80px;" 
        BorderColor="#000066" BorderStyle="Outset" BorderWidth="2px" 
        AlternateText="Gallery" onclick="ImageButton4_Click" /></div>
   <br/>
   <br />
    <div>
        <asp:Panel ID="Panel1" runat="server" DefaultButton="ImageButton1" 
            style="-webkit-box-shadow:0px 0px 18px rgba(0,0,0,1); -webkit-border-radius:10px; top: 85px; left: 423px; position: relative; height: 245px; width: 488px;" 
            BorderColor="White" ClientIDMode="AutoID">
             <center><h1>Sign up</h1><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server"  Text="Email ID:"></asp:Label>
                 <span class="style1">*</span>&nbsp;&nbsp
             <asp:TextBox ID="TextBox1" runat="server" style="-webkit-border-radius:5px;" placeholder="abc@as.com"></asp:TextBox><br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                     ErrorMessage="Incorrect User ID" ControlToValidate="TextBox1" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                     ForeColor="#CC0000"></asp:RegularExpressionValidator><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                 <span class="style1">*</span>&nbsp;&nbsp <asp:TextBox
                ID="TextBox2" runat="server" style="-webkit-border-radius:5px;" 
                     ontextchanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                 <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/m.png" 
            ToolTip="Show password" 
            style="-webkit-border-radius:5px; position:absolute; top: 119px; left: 381px; height: 15px; width: 16px;" 
            BorderColor="White" onclick="ImageButton3_Click"></asp:ImageButton>
                 <br />
                 <br />
                 <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
                 <span class="style1">*</span>&nbsp;<asp:TextBox ID="TextBox3" runat="server" 
                     style="-webkit-border-radius:5px;" ontextchanged="TextBox3_TextChanged" 
                     TextMode="Password"></asp:TextBox>
                 <br />
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/m.png" 
            ToolTip="Show password" 
            style="-webkit-border-radius:5px; position:absolute; top: 159px; left: 381px; height: 15px; width: 16px;" 
            BorderColor="White" onclick="ImageButton2_Click"></asp:ImageButton>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                     ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" 
                     ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" 
                     ForeColor="Red" ControlToValidate="TextBox2" EnableClientScript="False"></asp:RegularExpressionValidator>
        <br />
                 <asp:Label ID="Label12" runat="server" ForeColor="#CC0000"></asp:Label>
                 <br />
                 <br />
                 </center>
        </asp:Panel>
       <asp:Panel ID="Panel2" runat="server" Visible="false" DefaultButton="Button2"           
            style="-webkit-box-shadow:0px 0px 18px rgba(0,0,0,1);-webkit-border-radius:10px; top: 87px; left: 423px; position: relative; height: 670px; width: 488px;" 
            BorderColor="Black">
             <center><h1>Sign up</h1><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label6" runat="server" Text="Email ID:"></asp:Label>
                 <span class="style1">*</span>&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox11" runat="server" style="-webkit-border-radius:5px;" 
                     ReadOnly="True" BackColor="#FFFFCC"></asp:TextBox>
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
                 <span class="style1">* </span>&nbsp;&nbsp;<asp:TextBox ID="TextBox12" 
                     runat="server" style="-webkit-border-radius:5px;" ReadOnly="True" 
                     BackColor="#FFFFCC" TextMode="Password"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="Label8" runat="server" Text="Confirm Password:"></asp:Label>
                 <span class="style1">* </span>&nbsp;&nbsp;<asp:TextBox ID="TextBox13" 
                     runat="server" style="-webkit-border-radius:5px;" ReadOnly="True" 
                     BackColor="#FFFFCC" TextMode="Password"></asp:TextBox>
&nbsp;
                 <br />
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label9" runat="server" Text="Name:"></asp:Label>
                 <span class="style1">*</span>&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox14" runat="server" Placeholder=" First Name" style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br />
                 <br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox15" runat="server" Placeholder=" Last Name" style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br />
                 <br />
                 &nbsp;<asp:Label ID="Label10" runat="server" Text="Permanent Address:"></asp:Label>
                 <span class="style1">*</span><asp:TextBox ID="TextBox16" runat="server" 
                     Placeholder=" H.No./Street No." style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br/>
                 <br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox17" runat="server" Placeholder=" Locality/Socity" 
                     style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br/>
                 <br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox18" runat="server" Placeholder=" Town" style="-webkit-border-radius:5px;"></asp:TextBox>
             <br/><br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox
            ID="TextBox19" runat="server" Placeholder=" State" style="-webkit-border-radius:5px;"></asp:TextBox><br/><br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox
            ID="TextBox20" runat="server" Placeholder=" Pincode" 
                     style="-webkit-border-radius:5px;" MaxLength="6" TextMode="Number"></asp:TextBox><br/>
                 <br />
             
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label4" runat="server" Text="Date of Birth:"></asp:Label>
                 <span class="style1">*</span>&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" 
                     style="-webkit-border-radius:5px;" Width="133px"></asp:TextBox>
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label5" runat="server" Text="Mobile No.:"></asp:Label>
                 <span class="style1">*</span>&nbsp;&nbsp;<asp:TextBox
               ID="TextBox4" runat="server" MaxLength="10" style="-webkit-border-radius:5px;" 
                     TextMode="Number"></asp:TextBox><br /><br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label11" runat="server" Text="Aadhaar No.:"></asp:Label>
                 <span class="style1">*</span>&nbsp;&nbsp;<asp:TextBox ID="TextBox5" 
                     runat="server" MaxLength="12" TextMode="Number" 
                     style="-webkit-border-radius:5px;"></asp:TextBox><br />
           <br/>
                 <asp:Label ID="Label13" runat="server" Text="" ForeColor="#CC0000" 
                     style="background-color: #FFFF00"></asp:Label><br /><br />
           <asp:Button ID="Button1" runat="server" Text="Reset" 
                     style="-webkit-border-radius:2px;" onclick="Button1_Click" />&nbsp;&nbsp;<asp:Button ID="Button2"
               runat="server" Text="Submit" style="-webkit-border-radius:2px;" 
                     onclick="Button2_Click"/></center>
        </asp:Panel>
        <br /><br /><br/>
    </div>
    <br /><br /><br/><br /><br /><br/>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="57px" 
        ImageUrl="~/d.png" style="position: relative; top: -97px; left: 637px" 
        Width="59px" onclick="ImageButton1_Click" />
    </form>
</body>
</html>
