<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" >
<title>Team Section</title>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    font-family: Sans-Serif;
}
.team-section
{
    overflow: hidden;
    text-align: center;
    background: #34495e;
    padding: 60px;   
}
.team-section h1
{
    text-transform: uppercase;
    margin-bottom: 60px;
    color: White;
    font-size: 40px
}
.border
{
    display: block;
    width: 160px;
    height: 3px;
    background: #3498db;
    margin-bottom: 40px;
        margin-left: auto;
        margin-right: auto;
    }
.ps
{
    margin-bottom: 40px;
}
.ps a
{
    display: inline-block;
    margin: 0 30px;
    width: 160px;
    height: 160px;
    overflow: hidden;
    border-radius: 50%;
}
.ps a img
{
    width: 100%;
    filter: grayscale(100%);
    transition: 0.4s all;
}
.ps a:hover > img
{
    
    filter: none;
}
.section
{
    width: 600px;
    margin: auto;
    font-size: 20px;
    color: White;
    text-align: justify;
    height: 0;
    overflow: hidden;
} 
.section:target
{
    
    height: auto;
}
.name
{
    display: block;
    margin-bottom: 30px;
    text-align: center;
    text-transform: uppercase;
    font-size: 22px     

}
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="team-section">
    <h1> our team </h1>
    <span class="border"></span>
    <div class ="ps">
    <a href = "#p1"><img src= "p.jpg" alt=""></a>
       
    <a href = "#p2"><img src= "p.jpg" alt=""></a>
    <a href = "#p3"><img src= "d.png" alt=""></a>
    <a href = "#p4"><img src= "d.png" alt=""></a>
    </div>
    <div class="section" id="p1">
    <span class="name">Parmeet Singh</span>
    <span class="border"></span>
    <p>
    Rntc-08-16-038
    </p>
    </div>
     <div class="section" id="p2">
    <span class="name">Niraj Kumar Verma</span>
    <span class="border"></span>
    <p>
    Rntc-08-16-036
    </p>
    </div>
     <div class="section" id="p3">
    <span class="name">Kirandeep Kaur</span>
    <span class="border"></span>
    <p>
    Rntc-08-16-023
    </p>
    </div>
     <div class="section" id="p4">
    <span class="name">Neha</span>
    <span class="border"></span>
    <p>
    Rntc-08-16-032
    </p>
    </div>
    </div>
    </form>
</body>
</html>
