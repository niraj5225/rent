﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="59536d78622a4-twh4-riverview-mezzanine-261-hires-6000px-20june2017.jpg" style="background-size:cover;">
    <form id="form1" runat="server">
    <div >
        <br />
        <br />
    <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Solid" 
            BorderWidth="10px" 
            style="position:absolute; -webkit-border-radius:10px;top:50px;left:100px;" 
            BackColor="AliceBlue">
        <center><h1>&nbsp;&nbsp; ROOM LENDING&nbsp; &nbsp; </h1></center>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Width="301px" 
                FinishCompleteButtonText="Submit" 
            onfinishbuttonclick="Wizard1_FinishButtonClick" >
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title=" " StepType="Start">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Title:<br /><center>
            <asp:TextBox ID="TextBox1" runat="server" Width="223px" style="-webkit-border-radius:5px;" 
                ></asp:TextBox></center><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;User-ID:<br /><center>
        <asp:TextBox ID="TextBox2" runat="server" Width="223px" style="-webkit-border-radius:5px;" ReadOnly="True"></asp:TextBox></center><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type:<br /><center>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="223px" style="-webkit-border-radius:5px;">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Paying Guest</asp:ListItem>
            <asp:ListItem>Rent a room</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
        </center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Description:<br /><center>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" style="-webkit-border-radius:5px;" Height="72px" 
                Width="223px"></asp:TextBox></center> <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Price:<br /><center>
        <asp:TextBox ID="TextBox4" runat="server" Width="223px" placeholder="Enter charges as per day" style="-webkit-border-radius:5px;"></asp:TextBox></center><br />
                    </asp:WizardStep>

                    

                       <asp:WizardStep ID="WizardStep2" runat="server" Title=" ">
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Address:<br /><br />
                       <center>
                       <asp:TextBox ID="TextBox16" runat="server" Placeholder=" H.No./Street No." style="-webkit-border-radius:5px;" Width="223px"></asp:TextBox>
                 <br/>
                 <br/>
                 <asp:TextBox ID="TextBox17" runat="server" Width="223px" Placeholder=" Locality/Socity" style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br/>
                 <br/>
             <asp:TextBox ID="TextBox18" runat="server" Width="223px" Placeholder=" Town" style="-webkit-border-radius:5px;"></asp:TextBox>
             <br/><br/> <asp:TextBox
            ID="TextBox19" runat="server" Width="223px" Placeholder=" State" style="-webkit-border-radius:5px;"></asp:TextBox><br/><br/> <asp:TextBox
            ID="TextBox20" runat="server" Width="223px" Placeholder=" Pincode" style="-webkit-border-radius:5px;"></asp:TextBox><br/>
                 <br /></center>
                       </asp:WizardStep>
                       <asp:WizardStep ID="WizardStep3" runat="server" Title=" ">

                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Number of Room Available:<br />
                      <center> <asp:TextBox ID="TextBox5" runat="server" Width="223px" style="-webkit-border-radius:5px;" TextMode="SingleLine"></asp:TextBox></center><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Upload the Image(s) of Room:<br /><br />
                      <center> <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
            <asp:FileUpload ID="FileUpload2" runat="server" /><br /><br />
            <asp:FileUpload ID="FileUpload3" runat="server" /><br /><br />
            <asp:FileUpload ID="FileUpload4" runat="server" /><br /><br />
                          <asp:Label ID="Label1" runat="server" Text="" BackColor="Yellow" ForeColor="#CC0000"></asp:Label>
            </center>
                    </asp:WizardStep> 
                </WizardSteps>
            </asp:Wizard>
             </asp:Panel>
    </div>
    </form>
</body>
</html>
