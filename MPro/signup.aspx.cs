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

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            TextBox2.Attributes["value"] = TextBox2.Text;
        }
        if (this.IsPostBack)
        {
            TextBox3.Attributes["value"] = TextBox3.Text;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label12.Text = "Insert User ID/Password";}


        else if (TextBox2.Text.Trim() != TextBox3.Text.Trim())
        { Label12.Text = "Password didn't matched"; }

        else
        {
            cn.Open();
            cmd = new SqlCommand("Select * from lustab where id= '" + TextBox1.Text + "'", cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
                Label12.Text = "Insert another User ID";

            else
            {
                if (TextBox2.Text != "")
                {

                    RegularExpressionValidator2.EnableClientScript = Convert.ToBoolean("True");

                    RegularExpressionValidator2.EnableClientScript = Convert.ToBoolean("False");
                }
                ImageButton1.Visible = Convert.ToBoolean("False");
                Panel1.Visible = Convert.ToBoolean("False");
                Panel2.Visible = Convert.ToBoolean("True");
                TextBox2.TextMode = TextBoxMode.SingleLine;
                TextBox11.Text = TextBox1.Text;
                if (this.IsPostBack)
                {
                    TextBox12.Attributes["value"] = TextBox2.Text;
                }
                if (this.IsPostBack)
                {
                    TextBox13.Attributes["value"] = TextBox3.Text;
                }
            }
        }
             cn.Close();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
    }
    
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        
        if (ImageButton3.ImageUrl == "~/unm.png")
        {
            
            ImageButton3.ImageUrl = "~/m.png";
            TextBox2.TextMode = TextBoxMode.Password;
        }
        else if (ImageButton3.ImageUrl == "~/m.png")
        {
           
            ImageButton3.ImageUrl = "~/unm.png";
            TextBox2.TextMode = TextBoxMode.SingleLine;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        RegularExpressionValidator2.EnableClientScript = Convert.ToBoolean("False");
        if (ImageButton2.ImageUrl == "~/unm.png")
        {
            ImageButton2.ImageUrl = "~/m.png";
            TextBox3.TextMode = TextBoxMode.Password;
        }
        else if (ImageButton2.ImageUrl == "~/m.png")
        {
            ImageButton2.ImageUrl = "~/unm.png";
            TextBox3.TextMode = TextBoxMode.SingleLine;
        }
    }
    void clear()
    {
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
       
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox14.Text == "" || TextBox15.Text == "" || TextBox16.Text == "" || TextBox17.Text == "" || TextBox18.Text == "" || TextBox19.Text == "" || TextBox20.Text == "")
        {
            Label13.Text = "Please fill up all the data";
        }
        else {
            
            if (TextBox20.Text.Length != 6 )
                Label13.Text = "Check your City Pincode";
            else if (TextBox4.Text.Length != 10)
                Label13.Text = "Check your Mobile Number";
            else if (TextBox5.Text.Length != 12)
                Label13.Text = "Check your Aadhaar Card Number";
            else
            {
                cn.Open();
                
                    //Response.Write(Request.QueryString["n"]);
                   
                
                cmd = new SqlCommand("Insert into lustab values('" + TextBox11.Text + "','" + TextBox2.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<Script>alert('Thank you for joing us')</Script>");
                MailMessage msg = new MailMessage("comrenters@gmail.com", TextBox1.Text.Trim());
                msg.Subject = "Thank You For Joining Us";
                msg.Body = string.Format("<center><h1>RENTER'S.COM</h1><br/><h2>Hi, {0} </h2><br/> Thanku for joining us <br/> Your user-id is {1}", TextBox14.Text, TextBox11.Text);
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
                
                Response.Write("<Script>location.href = 'login.aspx';</Script>");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default14.aspx");
    }
}