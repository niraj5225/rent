using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
public partial class Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString["t"];

        cn.Open();
        cmd = new SqlCommand("Select * from book where sno='" + Label1.Text + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            MailMessage msg = new MailMessage("comrenters@gmail.com", dr["lid"].ToString());
            msg.Subject = "Booking";
            msg.Body = string.Format("<center><h1>RENTER'S.COM</h1><br/><h2>Hi, {0} </h2><br/>A booking is made at your property <br/><h2>Details:<br/></h2> Name of property: {1}<br/> Renter Name:{2}<br/>Contact No.:{3}<br/>Aadhaar No.:{4}", dr["lname"].ToString(), dr["title"].ToString(), dr["rname"].ToString(), dr["rmno"].ToString(), dr["rano"].ToString());
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential();
            nc.UserName = "comrenters@gmail.com";
            nc.Password = "Rntc@123";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Port = 587;
            smtp.Send(msg);

            msg = new MailMessage("comrenters@gmail.com", dr["rid"].ToString());
            msg.Subject = "Thank You For Joining Us";
            msg.Body = string.Format("<center><h1>RENTER'S.COM</h1><br/><h2>Hi, {0} <br/> Thanku for your response <br/> Booking Details:</h2><br/>Property Name: {1}<br/>Lender Name: {2} Contact No.: {3}", dr["rname"].ToString(), dr["title"].ToString(), dr["lname"].ToString(), dr["lmno"].ToString());
            msg.IsBodyHtml = true;
            smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            nc = new NetworkCredential();
            nc.UserName = "comrenters@gmail.com";
            nc.Password = "Rntc@123";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Port = 587;
            smtp.Send(msg);
        }
    }

}