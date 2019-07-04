<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

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
<body style="background-size:cover;" background="sky-boat-beach-sea-sunrise-lights-town-purple-blue-architecture-view-boats-trees-sunset-beautiful-ocean-sand-nature-colorful-house-colors-houses-peaceful-night-wallpaper-4k-1920x1080.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Solid" 
            BorderWidth="10px" 
            style="position:absolute; -webkit-border-radius:10px;top:74px; left:100px;" 
            BackColor="AliceBlue">
        <center><h1>&nbsp;&nbsp; HOUSE LENDING&nbsp; &nbsp; </h1></center>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Width="301px" 
                FinishCompleteButtonText="Upload" 
                onfinishbuttonclick="Wizard1_FinishButtonClick" >
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title=" " StepType="Start">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Title:<span class="style1">*</span><br /><center>
            <asp:TextBox ID="TextBox1" runat="server" Width="223px" style="-webkit-border-radius:5px;" 
                ></asp:TextBox></center><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;User-ID:<span class="style1">*</span><br /><center>
        <asp:TextBox ID="TextBox2" runat="server" Width="223px" style="-webkit-border-radius:5px;" ReadOnly="True"></asp:TextBox></center><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Area Unit(Sq Ft.):<span class="style1">*</span><br /><center>
        <asp:TextBox ID="TextBox5" runat="server" Width="223px" style="-webkit-border-radius:5px;"></asp:TextBox><br /><br />
        </center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Description:<span class="style1">*</span><br /><center>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" style="-webkit-border-radius:5px;" Height="72px" 
                Width="223px"></asp:TextBox></center> <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Price:<span class="style1">*</span><br /><center>
        <asp:TextBox ID="TextBox4" runat="server" Width="223px" placeholder="Enter charges as per day" style="-webkit-border-radius:5px;"></asp:TextBox></center><br />
                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardStep2" runat="server" Title=" ">
                      <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Address:<span class="style1">*</span><br /><br />
                       <center>
                       <asp:TextBox ID="TextBox16" runat="server" Placeholder=" H.No./Street No." style="-webkit-border-radius:5px;" Width="223px"></asp:TextBox>
                 <br/>
                 <br/>
                 <asp:TextBox ID="TextBox17" runat="server" Width="223px" Placeholder=" Locality/Socity" style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br/>
                 <br/>
             <asp:TextBox ID="TextBox18" runat="server" Width="223px" Placeholder=" Town" style="-webkit-border-radius:5px;"></asp:TextBox>
             <br/><br/> <asp:TextBox
            ID="TextBox19" runat="server" Width="223px" Placeholder=" State" style="-webkit-border-radius:5px;"></asp:TextBox><br /><br /> <asp:TextBox
            ID="TextBox20" runat="server" Width="223px" Placeholder=" Pincode" style="-webkit-border-radius:5px;"></asp:TextBox><br/>
            <br /></center>
                    
                    </asp:WizardStep> 

                       <asp:WizardStep ID="WizardStep3" runat="server" Title=" ">
                     <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Upload the Image(s) of House:<span class="style1">*</span><br /><br />
                      <center> <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
            <asp:FileUpload ID="FileUpload2" runat="server" /><br /><br />
            <asp:FileUpload ID="FileUpload3" runat="server" /><br /><br />
            <asp:FileUpload ID="FileUpload4" runat="server" /><br /><br />
            
                           <asp:Label ID="Label1" runat="server" Text="" BackColor="Yellow" ForeColor="#CC0000"></asp:Label>
                 <br /></center>
                       </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>

         
        </asp:Panel>
    </div>
    </form>
</body>
</html>
