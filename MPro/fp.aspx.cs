using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
public partial class fp : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            cn.Open();
            cmd = new SqlCommand("select * from lustab where id='" + TextBox1.Text.Trim() + "'", cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write(Request.QueryString["n"]);
                MailMessage msg = new MailMessage("nkverma6644477725@gmail.com", TextBox1.Text.Trim());
                msg.Subject = "Password Recovery";
                msg.Body = string.Format("<h1>Hi, {0} {1}</h1><br/> Your Password is {2}",dr["fname"],dr["lname"],dr["pwd"]);
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
                Response.Write("<script>alert('Please check your Mail')</script>");
            }
            else
            {
                Label1.Text = "Incorrect User Id";
            }
        }
        else
        {
            Label1.Text = "Enter the User id";
        }
    }
}