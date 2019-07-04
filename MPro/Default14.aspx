<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default14.aspx.cs" Inherits="Default14" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
         
         
    </style>
  
</head>
<body bgcolor="#F0F8FF" >

    <form id="form1" runat="server">
    <div style="background-color: Black; height: 78px; z-index: -2;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/l.png" Height="50px" Width="250px" />
        <div style="padding:10px 30px; float: right;"><asp:Button ID="Button1" runat="server" 
                Text="Be a Lender" BackColor="#0066FF" 
                
                style=" text-decoration:none; float:right; text-align:center; font-size:x-large; z-index: 2;" 
                BorderColor="Aqua" BorderStyle="Outset" onclick="Button1_Click"/>
    </div></div>
    <div style="background-color: #808080; height: 30px;-webkit-box-shadow:5px 5px 28px rgba(0,09,0,01); -webkit-border-radius:10px; z-index: 1; left: 05px; top: 65px; position: absolute; width:99.2%;">
  
    <a class="active" href="">Gallery</a>
    <a class="s" href="Default11.aspx">About</a>
    <a class="s" href="Default17.aspx">Donate</a>
    <a class="s" href="login.aspx">Feedback</a> 
    <a class="t" href="login.aspx">Log In</a>
   </div><br />
   <center>
   <div style="top:78px; height:500px; width:1144px; z-index: -1; left: 119px; position: absolute;" 
           align="center">
    
       <asp:Image class="mySlides" ID="Image2" runat="server" ImageUrl="~/about-img.jpg" style="width:100%;height:100%;"/>
       <asp:Image class="mySlides" ID="Image3" runat="server" ImageUrl="~/close-up-door-focus-101808.jpg" style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image4" runat="server" ImageUrl="~/Decor-cup1.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image5" runat="server" ImageUrl="~/event-venue-opt.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image6" runat="server" ImageUrl="~/header-bg.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image7" runat="server" ImageUrl="~/house_sky_changeling_59132_1280x720.jpg"  style="width:100%;height:100%"/>       
       <asp:Image class="mySlides" ID="Image8" runat="server" ImageUrl="~/luxury-room-sofitel-the-palm-dubai-1200x675.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image9" runat="server" ImageUrl="~/Melling_Int_9use.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image10" runat="server" ImageUrl="~/nirvaan-ground-mira-road-thane-film-shooting-location-5iwbu.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image11" runat="server" ImageUrl="~/park_autumn_trees_walking_paths_90924_1280x720.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image12" runat="server" ImageUrl="~/service-bg.jpg"  style="width:100%;height:100%"/>
       <asp:Image class="mySlides" ID="Image13" runat="server" ImageUrl="~/tokyo-prince-hotel-rooms-ClubDeluxeTwinRoom-noon-01-800x520.jpg"  style="width:100%;height:100%"/>
         
         <script type="text/javascript">
             var myIndex = 0;
             carousel();

             function carousel() {
                 var i;
                 var x = document.getElementsByClassName("mySlides");
                 for (i = 0; i < x.length; i++) {
                     x[i].style.display = "none";
                 }
                 myIndex++;
                 if (myIndex > x.length) { myIndex = 1 }
                 x[myIndex - 1].style.display = "block";
                 setTimeout(carousel, 5000);
             }
</script>
</div></center>
    <div style="-webkit-border-radius:190px; top: 550px; position: absolute; width: 100%;"  >
<center>
        <asp:Panel ID="Panel1" runat="server" Height="71px" Width="75%" BackColor="Black" 
                
            style="align-items:middle;-webkit-border-radius:190px;" 
            BorderColor="White">   
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Magnifying_Glass-512.png" Height="71px" ImageAlign="Bottom" style="float:right; border-radius:50%;"
                Width="78px" BackColor="White" onclick="ImageButton1_Click" /><br />
        <center>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="25%" 
                style="-webkit-border-radius:5px;" Font-Size="Large" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>-----Select any-----</asp:ListItem>
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>HOUSE</asp:ListItem>
            <asp:ListItem>ROOM</asp:ListItem>
            <asp:ListItem>HAll</asp:ListItem>
            <asp:ListItem>GROUND</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox2" runat="server" Width="25%" 
                style="-webkit-border-radius:5px;" Font-Size="Larger" 
                BorderStyle="Outset" placeholder="Search by locality/town/city"></asp:TextBox>
         </center>
        </asp:Panel></center></div><br /><br />
        
<div style="top:628px; position: absolute; left:119px;" >
    <asp:Panel ID="Panel2" runat="server">
    
    <div style="background-color: #999999"><h2><b>House::</b></h2></div><br />
    <asp:DataList ID="DataList1" runat="server"
            RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
            RepeatColumns="5" >
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" style="-webkit-border-radius:10px;" BorderStyle="Inset" BorderWidth="1px">
            <center><br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
            <br /></center><br />&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="147px" 
                ImageUrl='<%# Eval("img1") %>' Width="210px"   CommandName="Title" CommandArgument='<%# Eval("title") %>'/>
            <br />&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="#3399FF" 
                style="margin-left: 0px" Text="Intrested" Width="210px" BorderStyle="Outset" CommandName="Title"
                    BorderColor="#000066"   CommandArgument='<%# Eval("title") %>'/>
            <br />
<br /> </asp:Panel>
        </ItemTemplate>
       
    </asp:DataList></asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
    
        <br />
       <div style="background-color: #999999"><h2><b>Room::</b></h2></div><br />
        <asp:DataList ID="DataList2" runat="server" 
        RepeatDirection="Horizontal" onitemcommand="DataList2_ItemCommand" 
            RepeatColumns="5">
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" style="-webkit-border-radius:10px;" BorderStyle="Inset" BorderWidth="1px">
            <center><br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
            <br /></center><br />&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="147px" 
                ImageUrl='<%# Eval("img1") %>' Width="210px" CommandName="Title"/>
            <br />&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="#3399FF" CommandName="Title"
                style="margin-left: 0px" Text="Intrested" Width="210px" BorderStyle="Outset" BorderColor="#000066" />
            <br />
<br /> </asp:Panel>
        </ItemTemplate>
       
    </asp:DataList></asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    
          <br /><div style="background-color: #999999"><h2><b>Hall::</b></h2></div><br />
        <asp:DataList ID="DataList3" runat="server"
        RepeatDirection="Horizontal" onitemcommand="DataList3_ItemCommand" 
              RepeatColumns="5">
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" style="-webkit-border-radius:10px;" BorderStyle="Inset" BorderWidth="1px">
            <center><br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' CommandName="Title"></asp:Label>
            <br /></center><br />&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="147px" CommandName="Title" 
                ImageUrl='<%# Eval("img1") %>' Width="210px" />
            <br />&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="#3399FF" CommandName="Title"
                style="margin-left: 0px" Text="Intrested" Width="210px" BorderStyle="Outset" BorderColor="#000066" />
            <br />
<br /> </asp:Panel>
        </ItemTemplate>
       
    </asp:DataList></asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
    
         <br /><div style="background-color: #999999"><h2><b>Ground::</b></h2></div><br />
        <asp:DataList ID="DataList4" runat="server"
        RepeatDirection="Horizontal" onitemcommand="DataList4_ItemCommand" 
             RepeatColumns="5">
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" style="-webkit-border-radius:10px;" BorderStyle="Inset" BorderWidth="1px">
            <center><br />
            <asp:Label CommandName="Title" ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
            <br /></center><br />&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="147px" CommandName="Title"
                ImageUrl='<%# Eval("img1") %>' Width="210px" />
            <br />&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="#3399FF" CommandName="Title"
                style="margin-left: 0px" Text="Intrested" Width="210px" BorderStyle="Outset" BorderColor="#000066" />
            <br />
<br /> </asp:Panel>
        </ItemTemplate>
       
    </asp:DataList></asp:Panel>
</div>
    </form>
</body>
</html>
