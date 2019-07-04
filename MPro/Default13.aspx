<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body bgcolor="#F0F8FF">
    <form id="form1" runat="server">
      <div>
    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/logo.jpg" 
        ToolTip="Gallery" style="border-radius:50%; height:80px; width:80px;" 
        BorderColor="#000066" BorderStyle="Outset" BorderWidth="2px" 
        AlternateText="Gallery" onclick="ImageButton4_Click" /><br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label22" runat="server" Text="" 
              style="color: #FF0066; background-color: #FFFF00;"></asp:Label>
          <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Groove" 
            BorderWidth="10px" BackColor="AliceBlue"
              
              style="position:relative; left:100px;width:1080px; top: 0px;-webkit-border-radius:10px;" >
          <br />
          <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" Font-Size="XX-Large" 
                  style="text-decoration: underline"></asp:Label><br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="Lender Name :           "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
         
         <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text="Lender Contact No. :    "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
          <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" Text="Lender Aadhaar No. :    "></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" ></asp:Label>
         <br />
              <br />
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label23" runat="server" Text="Type :"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label24" runat="server"></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" Text="House Address :         "></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" 
                  runat="server" Text="                        "></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" 
                  runat="server" Text="                        "></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" 
                  runat="server" Text="                        "></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" 
                  runat="server" Text="                        "></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Text="Square ft. :            "></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox
                  ID="TextBox4" runat="server" 
                  style="position: relative; top: 0px; left: -21px"></asp:TextBox><asp:Label ID="Label12" runat="server" Text=" "></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Text="Description :            "></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                  ID="Label6" runat="server" Width="314px"></asp:Label>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label20" runat="server" Text="From :"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
              <br />
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label21" runat="server" Text="No. of Days required :"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
              <br />
              <br />
              <br />
         <br />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Text="Amount :    "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" ></asp:Label>
           <asp:Button ID="Button1" runat="server" Text="Waana be a renter"
                  style="float:right; font-size: x-large; margin-left: 15px;-webkit-border-radius:10px;" Height="56px" 
                  Width="405px" onclick="Button1_Click"/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
           <br /><br /><br />
         
          </asp:Panel>
          <asp:Panel ID="Panel4" runat="server" 
              style="position:relative;top:-550px; left:700px; width: 450px;">
          
          <br />
         <br />&nbsp; &nbsp;
                  <asp:Image ID="Image1" runat="server" Height="167px" 
                      Width="188px" />
                  &nbsp; &nbsp;<asp:Image ID="Image2" runat="server" Height="167px" 
            Width="188px" /> &nbsp; &nbsp;
                  <br /><br /> &nbsp; &nbsp;
                  <asp:Image ID="Image3" runat="server" Height="167px" 
                      Width="188px" />
                  &nbsp; &nbsp;<asp:Image ID="Image4" runat="server" Height="167px" 
                       Width="188px" /> &nbsp; &nbsp;<br /><br />
          </asp:Panel>
           <br/>
   <br /> <div  style="-webkit-border-radius:10px; position:relative; top:180px; padding-bottom:40vh;  min-height: 50vh;  padding-top: 40vh;">
   <center>
       <asp:Panel ID="Panel2" runat="server" 
           style="-webkit-border-radius:10px;" BorderColor="#CCCCCC" 
           BorderStyle="Groove" BorderWidth="2px" DefaultButton="Button2">
      <br /><br />
          <asp:Image ID="Image5" runat="server" ImageUrl="~/RupeeSymbol.gif" width="100px"
              style="-webkit-border-radius:10px;left: 6px; position: relative; top: 15px; z-index: 1;" 
               Height="73px"/>
          <asp:TextBox ID="TextBox1" runat="server" Height="46px" 
              style="left: -2px;top:-12px; position: relative;  width: 357px; font-size: x-large;" 
               ReadOnly="True"></asp:TextBox>
       <asp:Button ID="Button2" runat="server" Text="Pay" BackColor="#009933" 
              
               
               
               style="-webkit-border-radius:10px; left: -9px; position: relative; font-size: x-large; top: -10px;" Height="73px" 
              Width="100px" onclick="Button2_Click" />
          
          <br /><br />
 </asp:Panel></center><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
       <asp:Panel ID="Panel3" runat="server">
       </asp:Panel>
   </div>
          
        </div>
   <br/>
   <br />

      
    </form>
</body>
</html>
