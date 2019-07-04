<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_side_page.aspx.cs" Inherits="admin_side_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

        .style1
        {
            text-decoration: underline;
            font-size: xx-large;
        }

        .style2
        {
            text-decoration: underline;
        }

    </style>
<script type="text/javascript">
    function openNav() {
        document.getElementById("mySidenav").style.width = "20%";
       
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
    }
</script>
</head>
<body style=" background: #e0ebe8;">
    <form id="form1" runat="server">
      <div style="background-color: Black; height: 78px; position:fixed; width:100%;">
          &nbsp;&nbsp;<span style="position:fixed; font-size:30px; cursor:pointer; color:Gray;" 
              onclick="openNav()" >&#9776;</span>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/l.png" Height="50px" Width="250px" />
    <a href="Default14.aspx" 
              style= "background-color:Blue; float:right; text-decoration:none;color:White; padding:14px 16px;
        text-align:center;font-size:x-large; position: relative; top: 10px; left: -14px;">Log Out</a></div>
<div id="mySidenav" class="sidenav">
  <a  href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a><center>
      <asp:Image ID="Image2" runat="server"  ImageUrl="~/logo.jpg" 
        ToolTip="Gallery" style=" border-radius:50%; height:80px; width:80px;" 
        BorderColor="#000066" BorderStyle="Outset" BorderWidth="2px" 
        AlternateText="Gallery" /></center><br />
  <a href="#user">Registerd User</a>
  <a href="#post">Posted Property</a>
  <a href="#book">Booked Property</a>
  <a href="#feed">Users Feedback</a>
   <a href="#donate">Donatation</a>
</div>

<center>
<div style="top: 0; padding-bottom:40vh;  min-height: 50vh;  padding-top: 40vh;">
<h1>Welcome</h1><h1>Administrator</h1></center>

</div>
<div id="user" style=" min-height: 50vh; padding-bottom:40vh;
  padding-top: 40vh;">
    <span class="style1"><strong>Registerd User
</strong></span>
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="fname" HeaderText="First Name" 
                SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" 
                SortExpression="lname" />
            <asp:BoundField DataField="a1" HeaderText="Address Line 1" 
                SortExpression="a1" />
            <asp:BoundField DataField="a2" HeaderText="Address Line 2" 
                SortExpression="a2" />
            <asp:BoundField DataField="a3" HeaderText="Address Line 3" 
                SortExpression="a3" />
            <asp:BoundField DataField="a4" HeaderText="Address Line 4" 
                SortExpression="a4" />
            <asp:BoundField DataField="a5" HeaderText="Address Line 5" 
                SortExpression="a5" />
            <asp:BoundField DataField="dob" HeaderText="Date of Birth" 
                SortExpression="dob" />
            <asp:BoundField DataField="mno" HeaderText="Mobile Number" 
                SortExpression="mno" />
            <asp:BoundField DataField="ano" HeaderText="Addhar Number" 
                SortExpression="ano" />
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
        SelectCommand="SELECT [fname], [lname], [a1], [a2], [a3], [a4], [a5], [dob], [mno], [ano] FROM [lustab]"></asp:SqlDataSource>
</center></div>
   <div id="post" style=" min-height: 50vh;  padding-bottom:40vh;
  padding-top: 40vh;">
       <span class="style1"><strong>Posted Property</strong></span>
   <h2>House</h2>
       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
           DataSourceID="SqlDataSource2" BackColor="#CCCCCC" BorderColor="#999999" 
           BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
           ForeColor="Black" onselectedindexchanged="GridView2_SelectedIndexChanged" 
           AutoGenerateDeleteButton="True" DataKeyNames="title">
            
           <Columns>
               <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
               <asp:BoundField DataField="fname" HeaderText="First Name" 
                   SortExpression="fname" />
               <asp:BoundField DataField="lname" HeaderText="Last Name" 
                   SortExpression="lname" />
               <asp:BoundField DataField="area" HeaderText="Sq. ft." SortExpression="area" />
               <asp:BoundField DataField="des" HeaderText="Description" SortExpression="des" />
               <asp:BoundField DataField="a1" HeaderText="Address Line 1" 
                   SortExpression="a1" />
               <asp:BoundField DataField="a2" HeaderText="Address Line 2" 
                   SortExpression="a2" />
               <asp:BoundField DataField="a3" HeaderText="Address Line 3" 
                   SortExpression="a3" />
               <asp:BoundField DataField="a4" HeaderText="Address Line 4" 
                   SortExpression="a4" />
               <asp:BoundField DataField="a5" HeaderText="Address Line 5" 
                   SortExpression="a5" />
               <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
               <asp:TemplateField HeaderText="Image" SortExpression="img1">
                    <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img1") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img1") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img2">
                  <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img2") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img2") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img3">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img3") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img3") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img4">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img4") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img4") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
           </Columns>
           <FooterStyle BackColor="#CCCCCC" />
           <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
           <RowStyle BackColor="White" />
           <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="Gray" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#383838" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
           ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
           DeleteCommand="Delete from house where title=@title"
           SelectCommand="SELECT house.title, lustab.fname, lustab.lname, house.area, house.des, lustab.mno, lustab.ano, house.a1, house.a2, house.a3, house.a4, house.a5, house.amt, house.img1, house.img2, house.img3, house.img4 FROM house INNER JOIN lustab ON house.id=lustab.id">
           
           </asp:SqlDataSource>
       <h2>
       <br />
       <strong>Room</strong></h2>
       <br />
       <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
           BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
           CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource3" ForeColor="Black" AutoGenerateDeleteButton="True" DataKeyNames="title">
           <Columns>
               <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
               <asp:BoundField DataField="fname" HeaderText="First Name" 
                   SortExpression="fname" />
               <asp:BoundField DataField="lname" HeaderText="Last Name" 
                   SortExpression="lname" />
               <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
               <asp:BoundField DataField="des" HeaderText="Description" SortExpression="des" />
               <asp:BoundField DataField="a1" HeaderText="Address Line 1" 
                   SortExpression="a1" />
               <asp:BoundField DataField="a2" HeaderText="Address Line 2" 
                   SortExpression="a2" />
               <asp:BoundField DataField="a3" HeaderText="Address Line 3" 
                   SortExpression="a3" />
               <asp:BoundField DataField="a4" HeaderText="Address Line 4" 
                   SortExpression="a4" />
               <asp:BoundField DataField="a5" HeaderText="Address Line 5" 
                   SortExpression="a5" />
               <asp:BoundField DataField="nor" HeaderText="Number of Room" 
                   SortExpression="nor" />
               <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
               <asp:TemplateField HeaderText="Image" SortExpression="img1">
                    <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img1") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img1") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img2">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img2") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img2") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img3">
                    <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img3") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img3") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img4">
                    <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img4") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img4") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
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
       <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
           ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>"  DeleteCommand="Delete from room where title=@title"
           SelectCommand="SELECT room.title, room.type, room.des, room.amt, room.img1, room.img2, room.img3, room.img4, room.a1, room.a2, room.a3, room.a4, room.a5, room.nor, lustab.fname, lustab.lname,  lustab.mno, lustab.ano FROM room INNER JOIN lustab ON room.id = lustab.id"></asp:SqlDataSource>
       <h2>
           <strong>Hall</strong></h2>
       <br />
       <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
           BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
           CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource4" 
           ForeColor="Black" AutoGenerateDeleteButton="True" DataKeyNames="title">
           <Columns>
               <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
               <asp:BoundField DataField="fname" HeaderText="First Name" 
                   SortExpression="fname" />
               <asp:BoundField DataField="lname" HeaderText="Last Name" 
                   SortExpression="lname" />
               <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
               <asp:BoundField DataField="des" HeaderText="Description" SortExpression="des" />
               <asp:BoundField DataField="area" HeaderText="Sq. ft." SortExpression="area" />
               <asp:BoundField DataField="a1" HeaderText="Address Line 1" 
                   SortExpression="a1" />
               <asp:BoundField DataField="a2" HeaderText="Address Line 2" 
                   SortExpression="a2" />
               <asp:BoundField DataField="a3" HeaderText="Address Line 3" 
                   SortExpression="a3" />
               <asp:BoundField DataField="a4" HeaderText="Address Line 4" 
                   SortExpression="a4" />
               <asp:BoundField DataField="a5" HeaderText="Address Line 5" 
                   SortExpression="a5" />
               <asp:BoundField DataField="mno" HeaderText="Mobile Number" 
                   SortExpression="mno" />
               <asp:BoundField DataField="ano" HeaderText="Aadhar Number" 
                   SortExpression="ano" />
               <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
               <asp:TemplateField HeaderText="Image" SortExpression="img1">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img1") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img1") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img2">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("img2") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img2") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img3">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("img3") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                    <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img3") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img4">
                      <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img4") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img4") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
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
       <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
           ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>"  DeleteCommand="Delete from hall where title=@title"
           SelectCommand="SELECT hall.title, lustab.fname, lustab.lname, hall.type, hall.des, hall.area, hall.a1, hall.a2, hall.a3, hall.a4, hall.a5, lustab.mno, lustab.ano, hall.amt, hall.img1, hall.img2, hall.img3, hall.img4 FROM hall INNER JOIN lustab ON hall.id = lustab.id"></asp:SqlDataSource>
      
       <h2>
           <strong>
           <br />
           Ground</strong></h2>
      
       <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
           DataSourceID="SqlDataSource5" 
           onselectedindexchanged="GridView5_SelectedIndexChanged" 
           BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
           CellPadding="4" CellSpacing="2" ForeColor="Black" 
           AutoGenerateDeleteButton="True" DataKeyNames="title">
           <Columns>
               <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
               <asp:BoundField DataField="fname" HeaderText="First Name" 
                   SortExpression="fname" />
               <asp:BoundField DataField="lname" HeaderText="Last Name" 
                   SortExpression="lname" />
               <asp:BoundField DataField="area" HeaderText="Sq. ft." SortExpression="area" />
               <asp:BoundField DataField="des" HeaderText="Description" SortExpression="des" />
               <asp:BoundField DataField="a1" HeaderText="Address Line 1" 
                   SortExpression="a1" />
               <asp:BoundField DataField="a2" HeaderText="Address Line 2" 
                   SortExpression="a2" />
               <asp:BoundField DataField="a3" HeaderText="Address Line 3" 
                   SortExpression="a3" />
               <asp:BoundField DataField="a4" HeaderText="Address Line 4" 
                   SortExpression="a4" />
               <asp:BoundField DataField="a5" HeaderText="Address Line 5" 
                   SortExpression="a5" />
               <asp:BoundField DataField="mno" HeaderText="Mobile Number" 
                   SortExpression="mno" />
               <asp:BoundField DataField="ano" HeaderText="Aadhar Number" 
                   SortExpression="ano" />
               <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
               <asp:TemplateField HeaderText="Image" SortExpression="img1">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img1") %>'></asp:TextBox>
                   </EditItemTemplate>
                    <ItemTemplate> <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img1") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img2">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("img2") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate> <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img2") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img3">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("img3") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate> <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img3") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" SortExpression="img4">
                            <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("img4") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="76px" 
                           ImageUrl='<%# Eval("img4") %>' Width="90px" />
                   </ItemTemplate>
               </asp:TemplateField>
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
           ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>"  DeleteCommand="Delete from ground where title=@title"
           SelectCommand="SELECT ground.title, lustab.fname, lustab.lname,ground.id, ground.area, ground.a1, ground.a2, ground.a3, ground.a4, ground.a5,  lustab.mno, lustab.ano , ground.des, ground.amt, ground.img1, ground.img2, ground.img3, ground.img4 FROM ground INNER JOIN lustab ON ground.id = lustab.id"></asp:SqlDataSource>
       <br />
      </div>
 <div id="book" style=" min-height: 50vh; padding-bottom:40vh;
  padding-top: 40vh;">
  <span class="style1"><strong>Booking History
</strong></span>
     <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
         DataSourceID="SqlDataSource6" onrowcreated="GridView6_RowCreated" 
         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
         CellPadding="4" CellSpacing="2" ForeColor="Black" style="text-align:center;">
         <Columns>
             <asp:BoundField DataField="sno" HeaderText="Sl No." SortExpression="sno" />
             <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
             <asp:BoundField DataField="lname" HeaderText="Name" 
                 SortExpression="lname" />
             <asp:BoundField DataField="lmno" HeaderText="Mobile Number" 
                 SortExpression="lmno" />
             <asp:BoundField DataField="lano" HeaderText="Aadhar Number" 
                 SortExpression="lano" />
             <asp:BoundField DataField="rname" HeaderText="Name" SortExpression="rname" />
             <asp:BoundField DataField="rmno" HeaderText="Mobile Number" 
                 SortExpression="rmno" />
             <asp:BoundField DataField="rano" HeaderText="Aadhar Number" 
                 SortExpression="rano" />
             <asp:BoundField DataField="ra1" HeaderText="Address" SortExpression="ra1" />
             <asp:BoundField DataField="ha1" HeaderText="House Address" 
                 SortExpression="ha1" />
             <asp:BoundField DataField="area" HeaderText="Sq. ft." SortExpression="area" />
             <asp:BoundField DataField="des" HeaderText="Description" SortExpression="des" />
             <asp:BoundField DataField="bd" HeaderText="Booking Date" SortExpression="bd" />
             <asp:BoundField DataField="fd" HeaderText="Booked from" SortExpression="fd" />
             <asp:BoundField DataField="nod" HeaderText="Number of Days" 
                 SortExpression="nod" />
             <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
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
         SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
 </div>

 <div id="feed"  style="min-height: 50vh;padding-top: 40vh; padding-bottom:40vh;">
   <span class="style1"><strong>Feedback
</strong></span>
<center>
     <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
         CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource7" ForeColor="Black">
         <Columns>
             <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
             <asp:BoundField DataField="id" HeaderText="User id" SortExpression="id" />
             <asp:BoundField DataField="fd" HeaderText="Opinion" SortExpression="fd" />
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
     </asp:GridView></center>
     <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
         ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
         SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>

 </div>
 <div id="donate" style=" min-height: 50vh;  padding-top: 40vh;">
     <h1>
         <span class="style2"><strong>Donate</strong></span></h1><center>
&nbsp;<asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
         CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource8" ForeColor="Black">
         <Columns>
             <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
             <asp:BoundField DataField="id" HeaderText="User Id" SortExpression="id" />
             <asp:BoundField DataField="mno" HeaderText="Contact No." SortExpression="mno" />
             <asp:BoundField DataField="addr" HeaderText="Address" SortExpression="addr" />
             <asp:BoundField DataField="dto" HeaderText="Donate To" SortExpression="dto" />
             <asp:BoundField DataField="item" HeaderText="Goods" SortExpression="item" />
             <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left"  />
         <RowStyle BackColor="White" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
         ConnectionString="<%$ ConnectionStrings:nirajConnectionString %>" 
         SelectCommand="SELECT * FROM [donate]"></asp:SqlDataSource></center>
 </div>
    </form>
</body>
</html>
