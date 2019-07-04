<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF9966;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="background-color: Black; height: 78px; z-index: -2;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/l.png" Height="50px" Width="250px" /></div>
       <center><h1 class="style1">Thank You for your response to us.</h1><br /><br /><br /><br />
       <br /><h2><b>Your Booking Id is: </b>
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
           <br /> Details of booking:</h2>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
               CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
               <Columns>
                   <asp:BoundField DataField="lname" HeaderText="Lender Name" 
                       SortExpression="lname" />
                   <asp:BoundField DataField="lmno" HeaderText="Lender Mobile No." 
                       SortExpression="lmno" />
                   <asp:BoundField DataField="lano" HeaderText="Lender Aadhaar No." 
                       SortExpression="lano" />
                   <asp:BoundField DataField="title" HeaderText="House Name" 
                       SortExpression="title" />
                   <asp:BoundField DataField="ha1" HeaderText="Address" SortExpression="ha1" />
                   <asp:BoundField DataField="area" HeaderText="Sq ft." SortExpression="area" />
                   <asp:BoundField DataField="bd" HeaderText="Booking Date" SortExpression="bd" />
                   <asp:BoundField DataField="fd" HeaderText="Booked from" />
                   <asp:BoundField DataField="nod" HeaderText="Book for no. of days" />
                   <asp:BoundField DataField="amt" HeaderText="Amount Paid" />
               </Columns>
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
               <RowStyle BackColor="White" />
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
               SelectCommand="SELECT [lname], [lmno], [lano], [title], [ha1], [area], [bd], [fd], [nod], [amt] FROM [book] WHERE ([sno] = @sno)">
               <SelectParameters>
                   <asp:QueryStringParameter Name="sno" QueryStringField="t" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
           <br />
           <br />
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/menubar.aspx">Continue back to website</asp:HyperLink>
           </center>
       
    </div>
    </form>
</body>
</html>
