<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default15.aspx.cs" Inherits="Default15" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            font-weight: normal;
            text-align: left;
        }
    </style>
</head>
<body background="close-up-door-focus-101808.jpg" style="background-size: cover;">
    <form id="form1" runat="server">
    <div>
        
    <center>
        <h1 class="style1" style="font-family: Castellar">User Data
        </h1>
    <br /><br /><br /><h2>
            First
    Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          <asp:TextBox ID="TextBox1"  style="-webkit-border-radius:5px;"
                runat="server" ReadOnly="True"></asp:TextBox>
        
        </h2>
        <h2>
        
            Last name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"  style="-webkit-border-radius:5px;"></asp:TextBox>
            <br /><br />
    Date of birth :&nbsp;&nbsp;&nbsp;&nbsp;  
            <asp:TextBox ID="TextBox2" runat="server" 
                ReadOnly="True"></asp:TextBox><br /><br />
    Cotact No. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3"  style="-webkit-border-radius:5px;"
                runat="server" ReadOnly="True"></asp:TextBox><br /><br />
    Aadhaar No. :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"  style="-webkit-border-radius:5px;"
                ReadOnly="True"></asp:TextBox>
              </h2>
        <h2>
        
            <br />
       
            &nbsp;Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
            <asp:TextBox ID="TextBox5" runat="server" Placeholder=" H.No./Street No."  style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br/>
                 <br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox7" runat="server" Placeholder=" Locality/Socity"  style="-webkit-border-radius:5px;"></asp:TextBox>
                 <br/>
                 <br/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox8" runat="server" Placeholder=" Town"  style="-webkit-border-radius:5px;"></asp:TextBox>
             <br/><br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox
            ID="TextBox9" runat="server" Placeholder=" State"  style="-webkit-border-radius:5px;"></asp:TextBox><br/>
            
            <br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox
            ID="TextBox10" runat="server" Placeholder=" Pincode" style="-webkit-border-radius:5px;"></asp:TextBox>
              </h2>
        <p>
        
            &nbsp;</p>
        <p>
        
            &nbsp;</p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logo.jpg" 
        ToolTip="Gallery" style="border-radius:50%; height:80px; width:80px; position: relative;top:-666px; float: left; left: 0px;" 
        BorderColor="#000066" BorderStyle="Outset" BorderWidth="2px" 
        AlternateText="Gallery" onclick="ImageButton1_Click" />
        
        <asp:Panel ID="Panel1" runat="server" style="-webkit-border-radius:10px;" BorderColor="#333333" BorderWidth="2px" BorderStyle="Outset">
        <h2> Property to be lend:</h2>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <br />
                    <asp:Label ID="titleLabel" runat="server" style="font-size: x-large" 
                        Text='<%# Eval("title") %>' />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="128px" 
                        ImageUrl='<%# Eval("img1") %>' Width="161px" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
                SelectCommand="SELECT [img1], [title] FROM [house] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="s" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
                RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" style="font-size: x-large" 
                        Text='<%# Eval("title") %>'></asp:Label>
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="128px" 
                        ImageUrl='<%# Eval("img1") %>' Width="161px" />
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
                SelectCommand="SELECT [img1], [title] FROM [room] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="s" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" 
                RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <br />
                    <asp:Label ID="titleLabel" runat="server" style="font-size: x-large" 
                        Text='<%# Eval("title") %>' />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="128px" 
                        ImageUrl='<%# Eval("img1") %>' Width="161px" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
                SelectCommand="SELECT [img1], [title] FROM [hall] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="s" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4" 
                RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <br />
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="128px" 
                        ImageUrl='<%# Eval("img1") %>' Width="161px" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
                SelectCommand="SELECT [img1], [title] FROM [ground] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="s" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel><br /><br /><br />
            <asp:Panel ID="Panel2" runat="server"  BorderColor="#333333" BorderWidth="2px" style="-webkit-border-radius:20px;" BorderStyle="Outset">
            <h2>History : </h2>
                <asp:Panel ID="Panel3" style="-webkit-border-radius:10px;" runat="server"  BorderColor="#333333" BorderWidth="2px" BorderStyle="Inset">
                   <h2 class="style2">Lender of:</h2>
                    <center>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource5" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="title" HeaderText="House Name" 
                                    SortExpression="title" />
                                <asp:BoundField DataField="ha1" HeaderText="House Address" 
                                    SortExpression="ha1" />
                                <asp:BoundField DataField="rname" HeaderText="Booked by" 
                                    SortExpression="rname" />
                                <asp:BoundField DataField="rano" HeaderText="Renter Aadhaar No." 
                                    SortExpression="rano" />
                                <asp:BoundField DataField="bd" HeaderText="Booked on" SortExpression="bd" />
                                <asp:BoundField DataField="fd" HeaderText="Booked from" SortExpression="fd" />
                                <asp:BoundField DataField="rmno" HeaderText="Renter Contact No." 
                                    SortExpression="rmno" />
                                <asp:BoundField DataField="nod" HeaderText="For No. of days" 
                                    SortExpression="nod" />
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
                            SelectCommand="SELECT [title], [ha1], [rname], [rmno], [rano], [bd], [fd], [nod] FROM [book] WHERE ([lid] = @lid)">
                            <SelectParameters>
                                <asp:SessionParameter Name="lid" SessionField="s" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </center>
                    </asp:Panel>
                
                <asp:Panel ID="Panel4" runat="server" style="-webkit-border-radius:10px;" BorderColor="#333333" BorderWidth="2px" BorderStyle="Inset">
                    <br />
                   
                    <h2 class="style3">
                        <strong>Renter of:</strong></h2>
                    <center>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource6" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="title" HeaderText="House Name" 
                                    SortExpression="title" />
                                <asp:BoundField DataField="ha1" HeaderText="House Address" 
                                    SortExpression="ha1" />
                                <asp:BoundField DataField="area" HeaderText="Square ft." 
                                    SortExpression="area" />
                                <asp:BoundField DataField="lname" HeaderText="Lender Name" 
                                    SortExpression="lname" />
                                <asp:BoundField DataField="lano" HeaderText="Lender Aadhaar No." 
                                    SortExpression="lano" />
                                <asp:BoundField DataField="bd" HeaderText="Booked on" SortExpression="bd" />
                                <asp:BoundField DataField="fd" HeaderText="Booked from" SortExpression="fd" />
                                <asp:BoundField DataField="nod" HeaderText="No. of Days" SortExpression="nod" />
                                <asp:BoundField DataField="lmno" HeaderText="Lender Contact No." 
                                    SortExpression="lmno" />
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
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
                            SelectCommand="SELECT [lname], [lmno], [lano], [title], [ha1], [bd], [fd], [nod], [area] FROM [book] WHERE ([rid] = @rid)">
                            <SelectParameters>
                                <asp:SessionParameter Name="rid" SessionField="s" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </center>
                </asp:Panel>
                
            </asp:Panel>
    </div>
    </form>
</body>
</html>
