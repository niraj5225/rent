using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            TextBox2.Attributes["value"] = TextBox2.Text;
        }
    }
 
    public void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default14.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageButton2.ImageUrl == "~/unm.png")
        {
          
            ImageButton2.ImageUrl = "~/m.png";
           TextBox2.TextMode = TextBoxMode.Password;
         
                    }
        else if (ImageButton2.ImageUrl == "~/m.png")
        {

            ImageButton2.ImageUrl = "~/unm.png";
            TextBox2.TextMode = TextBoxMode.SingleLine;

        }

    }
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from lustab where id='" + TextBox1.Text.Trim() + "' and pwd='" + TextBox2.Text.Trim() + "' ",cn);
        dr = cmd.ExecuteReader();
        if (TextBox1.Text=="admin" &&TextBox2.Text=="1234")
        {
            Response.Redirect("admin_side_page.aspx");
        }
            
        else if(dr.Read())
        {
            Session["s"] = TextBox1.Text;
            String name = dr["fname"].ToString()+" "+dr["lname"].ToString();
            String pass = dr["pwd"].ToString();
            Response.Write("<Script>alert('Thank you for conecting with us')</Script>");
            Response.Write("<Script>location.href = 'menubar.aspx';</Script>");
        }
        else
        {
            Label3.Text = "Enter correct user-ID/Password";
            Label3.BackColor = System.Drawing.Color.Yellow;
        }
        cn.Close();
    }

}